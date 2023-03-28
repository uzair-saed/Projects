import 'dart:async';
import 'package:first/Login/logindemo.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeScreen();
  }

  Future changeScreen() {
    return Future.delayed(
      Duration(seconds: 5),
          () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => logindemo(title: "title"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue,
          child: Icon(
            Icons.logo_dev,
            color: Colors.red,
            size: 400,
          ),
        ),
      ),
    );
  }
}