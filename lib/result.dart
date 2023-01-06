import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetQuiz;
  Result(this.score, this.resetQuiz);

  String get textHandeler {
    var textProducer = 'You did it!';
    if (score <= 5) {
      textProducer = 'You are good!';
    } else if (score <= 7) {
      textProducer = 'You are Average!';
    } else {
      textProducer = 'You are bad!';
    }
    return textProducer;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textHandeler,
        ),
        ElevatedButton(onPressed: resetQuiz, child: Text('Reset Quiz'))
      ],
    );
  }
}
