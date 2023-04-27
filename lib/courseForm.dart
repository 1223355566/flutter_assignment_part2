import 'package:flutter/material.dart';
import 'package:flutter_assgignment2part2/courses_screen.dart';

class CourseForm extends StatelessWidget {
  @override
  String courseName;
  String courseImage;
  data continte;

  CourseForm(this.courseName, this.courseImage, this.continte);

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            margin: const EdgeInsets.all(10), child: Image.asset(courseImage)),
        Container(
          height: 50,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(16, 73, 209, 1.0)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)))),
              onPressed: () => Navigator.pushNamed(
                  context, Courses_screen.route,
                  arguments: continte),
              child: Text(
                courseName,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
        ),
      ],
    );
  }
}

class data {
  String title;
  String courseImage;
  String courseContinte;

  data(this.title, this.courseImage, this.courseContinte);
}
