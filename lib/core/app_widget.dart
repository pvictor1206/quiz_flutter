import 'package:flutter/material.dart';
import 'package:quiz_flutter/home/home_page.dart';



class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: HomePage(),
    );
  }
}

