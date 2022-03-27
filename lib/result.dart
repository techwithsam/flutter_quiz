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
    if (resultScore >= 41) {
      resultText = 'You are awesome!';
      debugPrint('$resultScore');
    } else if (resultScore >= 31) {
      resultText = 'Pretty likeable!';
      debugPrint('$resultScore');
    } else if (resultScore >= 21) {
      resultText = 'You need to work more!';
    } else if (resultScore >= 1) {
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
            'Score ' '$resultScore',
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: const Text('Restart Quiz!'),
            onPressed: resetHandler,
            style: TextButton.styleFrom(primary: Colors.blue),
          ),
        ],
      ),
    );
  }
}
