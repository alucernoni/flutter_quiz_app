import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

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
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      // built into dart, is a way of centering horizontally
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // built in way of centering items in the column vertically
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // built in way of expanding the items in the column to the full width of the column
          children: [
            Text(
              textAlign: TextAlign.center,
              currentQuestion.text,
              //can access both text and answers properties through dot notation because we constructed our questions doc with the quizQuestion constructor that receives text, and answers arguments
              style: const TextStyle(color: Colors.deepPurple),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onClick: () {},
              );
            }),
            // ... at the start of the mapping is how Flutter does the spread operator
            // AnswerButton(
            //   answerText: currentQuestion.answers[0],
            //   onClick: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[1],
            //   onClick: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[2],
            //   onClick: () {},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[3],
            //   onClick: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
