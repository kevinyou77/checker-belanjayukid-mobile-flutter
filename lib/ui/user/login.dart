import 'package:belanjayuk_mobile_flutter/constants/constants.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool validateLoginData () {
    return true;
  }

  void navigateToHome () {
    Navigator.pushReplacementNamed(context, Routes.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        child: _loginForm()
      ),
    );
  }

  Widget _loginForm () {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                )
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                ),
                obscureText: true,
              ),
              SizedBox(
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.blue,
                  onPressed: () => {
                    Navigator.pushReplacementNamed(context, Routes.home)
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}