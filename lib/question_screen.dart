import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      // built into dart, is a way of centering horizontally
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // built in way of centering items in the column vertically
        children: [
          const Text(
            'The question...',
            style: TextStyle(color: Colors.deepPurple),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: 'answer text...',
            onClick: () {},
          ),
          AnswerButton(
            answerText: 'answer text...',
            onClick: () {},
          ),
          AnswerButton(
            answerText: 'answer text...',
            onClick: () {},
          ),
        ],
      ),
    );
  }
}
