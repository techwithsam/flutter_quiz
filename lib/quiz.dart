import 'package:first_flutter_app/model/questions_model.dart';
import 'package:first_flutter_app/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  final int questionIndex;
  final Function answerQuestion;

  const Quiz({
    Key? key,
    required this.answerQuestion,
    required this.questionIndex,
  }) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> options = ['', 'A', 'B', 'C', 'D', 'E', 'F'];
  int _selected = 0;

  @override
  void initState() {
    questions[widget.questionIndex].answers.insert(0, {'text': '', 'score': 0});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int addup = widget.questionIndex + 1;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text('Question: $addup of ${questions.length}')),
          Question(questions[widget.questionIndex].questionText),
          // ...(questions[questionIndex].answers).map((answer) {
          //   return Answer(
          //     () => answerQuestion(answer['score']),
          //     answer['text'].toString(),
          //   );
          // }).toList(),
          // const SizedBox(height: 20),
          for (var i = 0;
              i < questions[widget.questionIndex].answers.length;
              i++)
            Visibility(
              visible: i == 0 ? false : true,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selected = i;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        vertical: 6.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: _selected == i ? Colors.blue : Colors.transparent,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text.rich(
                      TextSpan(
                        text: '${options[i]}. ',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: _selected == i ? Colors.white : Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text:
                                '${questions[widget.questionIndex].answers[i]['text']}',
                            style: const TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => widget.answerQuestion(
                questions[widget.questionIndex].answers[_selected]['score']),
            child: const Text('NEXT'),
          ),
        ],
      ),
    );
  }
}
