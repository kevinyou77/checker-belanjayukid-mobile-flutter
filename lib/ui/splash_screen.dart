import 'dart:async';

import 'package:belanjayuk_mobile_flutter/constants/constants.dart';
import 'package:belanjayuk_mobile_flutter/sqlite/auth/auth_db_provider.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigationPage () {
    AuthDBProvider.db.getAuthUser().then((res) {
      var hasUser = res != null;
      var goTo = hasUser ? Routes.home : Routes.login;

      Navigator.pushReplacementNamed(context, goTo);
    });
    
  }

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  @override
  void initState() {
    super.initState();
    this.startTime();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new Image.asset(Assets.splashScreen),
      ),
    );
  }
}