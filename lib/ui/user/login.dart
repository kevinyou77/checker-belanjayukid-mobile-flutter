import 'package:belanjayuk_mobile_flutter/constants/constants.dart';
import 'package:belanjayuk_mobile_flutter/providers/auth/auth_provider.dart';
import 'package:belanjayuk_mobile_flutter/sqlite/auth/auth_db_provider.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _username = "";
  String _password = "";
  bool _loading = false;
  final AuthProvider _authProvider = AuthProvider();

  @override 
  void initState() {
    super.initState();
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

  bool validateLoginData () {
    return true;
  }

  void navigateToHome () {
    Navigator.pushReplacementNamed(context, Routes.home);
  }

  void _login () async {
    this._loading = true;
    await this._authProvider.login(this._username, this._password).then((res) {
      AuthDBProvider.db.createAuthUser(res);
      Navigator.pushReplacementNamed(this.context, '/home');
      this._loading = false;
    }).catchError((e) {
      this._loading = false;
    });
  }

  void _handleUsernameOnChange (String username) {
    this._username = username;
  }

  void _handlePasswordOnChange (String password) {
    this._password = password;
  }

  void _handleFormOnSubmit () {
    this._login();
  }

  Widget _renderButton () {
    if (this._loading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return MaterialButton(
      color: Colors.blue,
      onPressed: this._handleFormOnSubmit,
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.white
        ),
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
                ),
                onChanged: this._handleUsernameOnChange,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                ),
                obscureText: true,
                onChanged: this._handlePasswordOnChange,
              ),
              SizedBox(
                width: double.infinity,
                child: this._renderButton()
              )
            ],
          ),
        )
      ],
    );
  }
}