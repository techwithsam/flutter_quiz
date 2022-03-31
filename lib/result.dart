import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetHandler;

  const Result(
    this.resultScore,
    this.resetHandler, {
    Key? key,
  }) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 130) {
      resultText = 'Over all best ❤🎉';
      debugPrint('$resultScore');
    } else if (resultScore >= 100) {
      resultText = 'You are awesome!';
      debugPrint('$resultScore');
    } else if (resultScore >= 80) {
      resultText = 'Pretty likeable!';
      debugPrint('$resultScore');
    } else if (resultScore >= 60) {
      resultText = 'You need to work more!';
    } else if (resultScore >= 40) {
      resultText = 'You need to work hard!';
    } else {
      resultText = 'This is a poor score!';
      debugPrint('$resultScore');
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            'Score ' '$resultScore/150',
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: const Text('Restart Quiz!'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
