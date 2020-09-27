import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class Api {
  final Dio dio = Dio(BaseOptions(
    baseUrl: 'https://ancient-spire-87228.herokuapp.com/api',
    connectTimeout: 60 * 3 * 1000, // 2 minutes
  ));

  void removeDefaultAuthHeader() {
    dio.options.headers = {
      'Authorization': '',
    };
  }

  void setDefaultAuthHeader(String jwt) {
    dio.options.headers = {
      'Authorization': 'Bearer $jwt',
    };
  }
}
