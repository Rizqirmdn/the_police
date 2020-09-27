import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:polisi_crime_mapping/blocs/blocs.dart';
import 'package:polisi_crime_mapping/dto/login_dto.dart';
import 'package:polisi_crime_mapping/entity/form_status.dart';
import 'package:polisi_crime_mapping/services/auth_service.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@lazySingleton
class LoginCubit extends Cubit<LoginState> {
  final AuthService _authService;
  final AuthCubit _authCubit;

  LoginCubit(this._authService, this._authCubit)
      : super(LoginState(status: FormStatus.idle()));

  Future<void> submit(LoginDto dto) async {
    try {
      emit(state.copyWith(status: FormStatus.loading()));
      final accessToken = await _authService.login(dto);
      emit(state.copyWith(status: FormStatus.success()));
      _authCubit.onLoggedIn(accessToken);
    } catch (e) {
      emit(state.copyWith(status: FormStatus.error(message: "Login gagal")));
    }
  }
}
