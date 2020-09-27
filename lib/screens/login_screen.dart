import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polisi_crime_mapping/blocs/auth_cubit/auth_cubit.dart';
import 'package:polisi_crime_mapping/blocs/login_cubit/login_cubit.dart';
import 'package:polisi_crime_mapping/dto/login_dto.dart';
import 'package:polisi_crime_mapping/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final form = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  final passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Akun Polisi Anda'),
      ),
      body: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            authenticated: (_) => Navigator.of(context).pushNamedAndRemoveUntil(
                HomeScreen.routeName, (route) => false),
            orElse: () {},
          );
        },
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
             print(state.status);
            state.status.maybeWhen(
              success: () =>
                  FlushbarHelper.createSuccess(message: "Login berhasil")
                    ..show(context),
              error: (message) =>
                  FlushbarHelper.createError(message: '${state.status}')
                    ..show(context),
              orElse: () {},
            );
          },
          builder: (context, state) {
            return Form(
              key: form,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: "Email",
                        ),
                        onFieldSubmitted: (_) =>
                            passwordFocusNode.requestFocus(),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        controller: password,
                        focusNode: passwordFocusNode,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50.0,
                        child: RaisedButton(
                          color: Colors.brown,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onPressed: () {
                            context.bloc<LoginCubit>().submit(LoginDto(
                                  email: email.text,
                                  password: password.text,
                                ));
                          },
                          child: Text(
                            state.status.maybeWhen(
                              loading: () => "Login...",
                              orElse: () => "Login",
                            ),style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }
}
