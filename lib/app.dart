import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polisi_crime_mapping/blocs/blocs.dart';
import 'package:polisi_crime_mapping/injection.dart';
import 'package:polisi_crime_mapping/screens/home_screen.dart';
import 'package:polisi_crime_mapping/screens/login_screen.dart';
import 'package:polisi_crime_mapping/screens/pengaduan_detail_screen.dart';
import 'package:polisi_crime_mapping/screens/splash_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (_) => getIt<AuthCubit>(),
        ),
        BlocProvider<LoginCubit>(
          create: (_) => getIt<LoginCubit>(),
        ),
        BlocProvider<ListPengaduanCubit>(
          create: (_) => getIt<ListPengaduanCubit>(),
        ),
        BlocProvider<ListPengaduanActiveCubit>(
          create: (_) => getIt<ListPengaduanActiveCubit>(),
        ),
        BlocProvider<PengaduanDetailCubit>(
          create: (_) => getIt<PengaduanDetailCubit>(),
        )
      ],
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        title: "Polisi Crime Mapping",
        theme: ThemeData(
          primaryColor: Colors.brown,
        ),
        routes: {
          SplashScreen.routeName: (_) => SplashScreen(),
          LoginScreen.routeName: (_) => LoginScreen(),
          HomeScreen.routeName: (_) => HomeScreen(),
          PengaduanDetailScreen.routeName: (context) => PengaduanDetailScreen(
              pengaduanId: ModalRoute.of(context).settings.arguments as String),
        },
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Test"),
      ),
    );
  }
}
