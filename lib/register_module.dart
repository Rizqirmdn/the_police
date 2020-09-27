import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@registerModule
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get pref => SharedPreferences.getInstance();
}
