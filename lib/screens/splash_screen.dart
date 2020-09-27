import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:polisi_crime_mapping/blocs/auth_cubit/auth_cubit.dart';
import 'package:polisi_crime_mapping/screens/home_screen.dart';
import 'package:polisi_crime_mapping/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final logger = Logger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: BlocConsumer<AuthCubit, AuthState>(
        listenWhen: (previous, current) => previous != current,
        listener: (context, state) {
          state.maybeWhen(
            authenticated: (_) => Navigator.of(context)
                .pushReplacementNamed(HomeScreen.routeName),
            unauthenticated: () => Navigator.of(context)
                .pushReplacementNamed(LoginScreen.routeName),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () {
      context.bloc<AuthCubit>().checkAuth();
    });
    super.initState();
  }
}
