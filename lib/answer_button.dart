import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  // const AnswerButton(this.answerText, this.onClick, {super.key});
  // positional arguments option

  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onClick,
  });
  // named arguments option

  final String answerText;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        // symmetric lets you set separate padding for horizontal v vertical 
        backgroundColor: const Color.fromARGB(255, 151, 103, 234),
        foregroundColor:  const Color.fromARGB(255, 101, 8, 118),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),
      ),
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
