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
        color: Color.fromARGB(255, 66, 20, 146),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png', height: 300,),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                  color: Color.fromARGB(255, 190, 123, 225), 
                  fontSize: 24),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: startQuiz(), 
              child: const Text('Start Quiz', style: TextStyle(color: Color.fromARGB(255, 190, 123, 225),),),),
          ],
        ),
      ),
    );
  }
}
