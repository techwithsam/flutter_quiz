import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String answerText;
  const Answer(
    this.selectHandler,
    this.answerText, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      child: ElevatedButton(
        child: Text(
          answerText,
          textAlign: TextAlign.start,
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
