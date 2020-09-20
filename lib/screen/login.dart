import 'package:flutter/material.dart';
import 'package:the_police/screen/home.dart';
import 'package:the_police/widget/text.input.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Flexible(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.brown,
                image: DecorationImage(
                  image: AssetImage('assets/police_logo.png'),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              color: Colors.white,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 50, left: 30.0, right: 30.0),
                  child: SingleChildScrollView(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //name app
                        Text(
                          'The Police',
                          style: TextStyle(
                              fontSize: 30,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        //username
                        TextFormInput(
                          hintText: 'Masukan Username Anda',
                          keyboardType: TextInputType.text,
                          obscureText: false,
                          prefixIcon: Icon(Icons.supervised_user_circle),
                          controller: usernameController,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //password
                        TextFormInput(
                          hintText: 'Masukan Passsword Anda',
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          prefixIcon: Icon(Icons.lock),
                          controller: passwordController,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        //button
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: FlatButton(
                            padding: EdgeInsets.all(20),
                            color: Colors.brown,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            onPressed: () {
                              //todo: Push Home/Dashboard
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
