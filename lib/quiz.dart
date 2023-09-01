import 'package:flutter/material.dart';
import 'package:quiz_app/home_container.dart';
import 'package:quiz_app/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  // need the question mark because the activeScreen object is initially created with a value of null before initState runs and sets it

  @override
  void initState() {
    activeScreen = HomeContainer(switchScreen);
    super.initState();
  }

  switchScreen() {
    setState(
      () {
        activeScreen = const QuestionScreen();
      },
    );
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: activeScreen,
      ),
    );
  }
}
