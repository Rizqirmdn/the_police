import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:polisi_crime_mapping/dto/login_dto.dart';
import 'package:polisi_crime_mapping/utils/api.dart';

@lazySingleton
class AuthService {
  final Api _api;

  const AuthService(this._api);

  Future<String> login(LoginDto dto) async {
    try {
      print(dto.toMap);
      final res = await _api.dio.post(
        "/polisi/login",
        data: dto.toMap,
        options: Options(contentType: Headers.formUrlEncodedContentType),
      );
      final data = res.data;
      return data['accessToken'];
    } on DioError catch (e) {
      print(e.request.data);
      throw e;
    }
  }
}
