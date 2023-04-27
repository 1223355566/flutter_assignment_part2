import 'package:flutter/material.dart';
import 'package:flutter_assgignment2part2/courses.dart';
import 'package:flutter_assgignment2part2/splash_screen.dart';

import 'courses_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        Splash_Screen.route: (_) => Splash_Screen(),
        Courses.route: (_) => Courses(),
        Courses_screen.route: (_) => Courses_screen(),
      },
      initialRoute: Splash_Screen.route,
    );
  }
}
