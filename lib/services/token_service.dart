import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:polisi_crime_mapping/entity/jwt_payload.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class TokenService {
  final SharedPreferences _sharedPreferences;

  const TokenService(
    this._sharedPreferences,
  );

  String getAccessToken() {
    return _sharedPreferences.getString("accessToken");
  }

  Future<void> persistToken(String token) async {
    await _sharedPreferences.setString("accessToken", token);
  }

  Future<void> removeToken() async {
    await _sharedPreferences.remove("accessToken");
  }

  JwtPayload decodeJWT(String token) {
    final parts = token.split('.');
    final payload = parts[1];
    final decoded = B64urlEncRfc7515.decodeUtf8(payload);
    final parsedPayload = json.decode(decoded);
    return JwtPayload.fromJSON(parsedPayload);
  }
}
