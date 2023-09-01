import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  startQuiz() {
    // code to start quiz
  }

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 66, 20, 146),
            Color.fromARGB(255, 93, 50, 169),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                  color: Color.fromARGB(255, 190, 123, 225), fontSize: 24),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: startQuiz(),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              child: const Text(
                'Start Quiz',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
