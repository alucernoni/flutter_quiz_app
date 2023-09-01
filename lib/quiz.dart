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
  var activeScreen = 'start-screen';
  // can also use strings (or numbers) as pointers. a bit less code, since eliminates the need for the initState method

  void switchScreen() {
    setState(
      () {
        activeScreen = 'questions-screen';
      },
    );
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: activeScreen == 'start-screen' ? HomeContainer(switchScreen) : const QuestionScreen(),
      ),
    );
  }
}
