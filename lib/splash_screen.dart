import 'dart:async';

import 'package:flutter/material.dart';

import "courses.dart";

class Splash_Screen extends StatefulWidget {
  static String route = "Splash_Screen_Route";

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2),
        () => Navigator.pushReplacementNamed(context, Courses.route));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Image.asset("assets/splash_screen.png", fit: BoxFit.fill),
      ),
    );
  }
}
