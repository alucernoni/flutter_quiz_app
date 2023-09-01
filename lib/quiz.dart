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
    final screenWidget = activeScreen == 'start-screen'
            ? HomeContainer(switchScreen)
            : const QuestionScreen();

    // this new screenWidget function is only available in the build, not in the whole class 
    // can extract ternary up here to make it look cleaner and more readable, or convert ternary to if statement

    return MaterialApp(
      home: Scaffold(
        body: screenWidget
      ),
    );
  }
}
