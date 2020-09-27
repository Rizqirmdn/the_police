// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:polisi_crime_mapping/utils/api.dart';
import 'package:polisi_crime_mapping/services/auth_service.dart';
import 'package:polisi_crime_mapping/services/pengaduan_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:polisi_crime_mapping/register_module.dart';
import 'package:polisi_crime_mapping/services/token_service.dart';
import 'package:polisi_crime_mapping/blocs/auth_cubit/auth_cubit.dart';
import 'package:polisi_crime_mapping/blocs/list_pengaduan_active_cubit/list_pengaduan_active_cubit.dart';
import 'package:polisi_crime_mapping/blocs/list_pengaduan_cubit/list_pengaduan_cubit.dart';
import 'package:polisi_crime_mapping/blocs/login_cubit/login_cubit.dart';
import 'package:polisi_crime_mapping/blocs/pengaduan_detail_cubit/pengaduan_detail_cubit.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final registerModule = _$RegisterModule();
  g.registerLazySingleton<Api>(() => Api());
  g.registerLazySingleton<AuthService>(() => AuthService(g<Api>()));
  g.registerLazySingleton<PengaduanService>(() => PengaduanService(g<Api>()));
  final sharedPreferences = await registerModule.pref;
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<TokenService>(
      () => TokenService(g<SharedPreferences>()));
  g.registerLazySingleton<AuthCubit>(
      () => AuthCubit(g<TokenService>(), g<Api>()));
  g.registerLazySingleton<ListPengaduanActiveCubit>(
      () => ListPengaduanActiveCubit(g<PengaduanService>()));
  g.registerLazySingleton<ListPengaduanCubit>(
      () => ListPengaduanCubit(g<PengaduanService>()));
  g.registerLazySingleton<LoginCubit>(
      () => LoginCubit(g<AuthService>(), g<AuthCubit>()));
  g.registerLazySingleton<PengaduanDetailCubit>(
      () => PengaduanDetailCubit(g<PengaduanService>()));
}

class _$RegisterModule extends RegisterModule {}
