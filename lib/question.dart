import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      ),
    );
  }
}
