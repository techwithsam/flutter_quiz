import 'package:first_flutter_app/answer.dart';
import 'package:first_flutter_app/model/questions_model.dart';
import 'package:first_flutter_app/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function answerQuestion;

  const Quiz({
    Key? key,
    required this.answerQuestion,
    required this.questionIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int addup = questionIndex + 1;
    return Column(
      children: [
        Text('Question: $addup of ${questions.length}'),
        Question(questions[questionIndex].questionText),
        ...(questions[questionIndex].answers).map((answer) {
          return Answer(
            () => answerQuestion(answer['score']),
            answer['text'].toString(),
          );
        }).toList()
      ],
    );
  }
}
