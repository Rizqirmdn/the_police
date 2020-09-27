import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:polisi_crime_mapping/entity/jwt_payload.dart';
import 'package:polisi_crime_mapping/services/token_service.dart';
import 'package:polisi_crime_mapping/utils/api.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  final TokenService _tokenService;
  final Api _api;
  final logger = Logger();

  AuthCubit(this._tokenService, this._api) : super(AuthState.inital());

  Future<void> checkAuth() async {
    final accessToken = _tokenService.getAccessToken();
    if (accessToken == null) {
      emit(AuthState.unauthenticated());
      return;
    }

    final decodedToken = _tokenService.decodeJWT(accessToken);
    if (decodedToken.isExpired) {
      await _tokenService.removeToken();
      emit(AuthState.unauthenticated());
      return;
    }
    onLoggedIn(accessToken);
  }

  Future<void> onLoggedIn(String token) async {
    await _tokenService.persistToken(token);
    _api.setDefaultAuthHeader(token);
    final payload = _tokenService.decodeJWT(token);
    emit(AuthState.authenticated(payload: payload));
  }
}
