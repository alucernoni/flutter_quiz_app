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
  Widget activeScreen = const HomeContainer();
  // don't use var because of it's strict type inference, it will only take type "HomeContainer", using Widget because accepting/flexible of any widget

  switchScreen() {
    setState(
      () {
        const QuestionScreen();
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
