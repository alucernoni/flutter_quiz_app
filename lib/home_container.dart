import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer(this.startQuiz, {super.key});

  final void Function() startQuiz;

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
              color: const Color.fromARGB(150, 255, 255, 255),
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
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  // foregroundColor: Colors.white,
                  ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                'Start Quiz',
                style: TextStyle(color: Color.fromARGB(255, 216, 159, 231)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
