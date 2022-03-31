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

  // @override
  // void initState() {
  // var olddata = questions[widget.questionIndex].answers;
  // var newdata = [
  //   {'text': '', 'score': 0},
  //   {'text': 'saksa', 'score': 0}
  // ];
  // for (int i = 0; i < olddata.length; i++) {
  //   return newdata.add(olddata[i]);
  // }
  // questions[widget.questionIndex].answers.insert(0, {'text': '', 'score': 0});
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    int addup = widget.questionIndex + 1;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text('Question: $addup of ${questions.length}')),
          Question(questions[widget.questionIndex].questionText),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: ElevatedButton(
                  onPressed: () {
                    if (_selected == 0) {
                      snackBar('Error: No answer selected');
                    } else {
                      setState(() {
                        _selected == 0;
                      });
                      widget.answerQuestion(questions[widget.questionIndex]
                          .answers[_selected]['score']);
                      debugPrint('$_selected after clicking');
                    }
                  },
                  child: const Text('NEXT'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  snackBar(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      content: Text(msg, style: Theme.of(context).primaryTextTheme.subtitle2),
    ));
  }
}
