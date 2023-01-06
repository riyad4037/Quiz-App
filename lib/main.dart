import 'package:flutter/material.dart';
import 'package:my_quiz_app1/quiz.dart';
import 'package:my_quiz_app1/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int Score) {
    setState(() {
      _totalScore += Score;
      _questionIndex += 1;
      print('index');
      print(_questionIndex);
    });

    if (_questionIndex < _questions.length) {
      print('question length');
      print(_questions.length);
    }
  }

  void _reset() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  final _questions = const [
    {
      'questionText': 'What is your favourite Animal?',
      'answer': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 2},
        {'text': 'Cow', 'score': 3},
        {'text': 'Goat', 'score': 4},
      ],
    },
    {
      'questionText': 'What is your favourite Flower?',
      'answer': [
        {'text': 'Lily', 'score': 1},
        {'text': 'Rose', 'score': 2},
        {'text': 'Sunflower', 'score': 3},
        {'text': 'Karamcha', 'score': 4},
      ],
    },
    {
      'questionText': 'What is your favourite Fruit?',
      'answer': [
        {'text': 'Mango', 'score': 1},
        {'text': 'Apple', 'score': 2},
        {'text': 'Berry', 'score': 3},
        {'text': 'Coconut', 'score': 4},
      ],
    },
    {
      'questionText': 'What is your favourite Song?',
      'answer': [
        {'text': 'Dukkho Bilash', 'score': 1},
        {'text': 'Rajahin Rajje', 'score': 2},
        {'text': 'Haste Dekho Gaite Dekho', 'score': 3},
        {'text': 'Tamak Pata', 'score': 4},
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My quiz App',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.greenAccent,
            ),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _reset),
      ),
    );
  }
}
