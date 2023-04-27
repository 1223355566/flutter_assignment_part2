import 'package:flutter/material.dart';

import 'courseForm.dart';

class Courses_screen extends StatelessWidget {
  static String route = "courses_screen";

  @override
  Widget build(BuildContext context) {
    data args = ModalRoute.of(context)!.settings.arguments as data;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 31, 133, 1.0),
        title: Text(
          "${args.title}",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          Container(
              height: double.infinity,
              child: Image.asset(
                "assets/Bg.jpg",
                fit: BoxFit.fill,
              )),
          Container(
              margin: EdgeInsets.all(8), child: Image.asset(args.courseImage)),
          Positioned(
              top: 225,
              child: Text(
                args.courseContinte,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ))
        ],
      ),
    );
  }
}
