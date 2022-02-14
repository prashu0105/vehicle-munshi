// ignore_for_file: unused_import, prefer_const_constructors

import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:vehicle_master/Screens/login.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var h, w;
  startTime() {
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Login())));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Center(
          child: Image.asset(
            "assets/images/Logo.png",
            fit: BoxFit.fill,
            height: w * 0.6,
            width: w * 0.6,
          ),
        ),
      ),
    );
  }
}
