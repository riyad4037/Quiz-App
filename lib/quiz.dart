import 'package:flutter/material.dart';
import 'package:my_quiz_app1/answer.dart';
import 'package:my_quiz_app1/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {required this.answerQuestion,
      required this.questionIndex,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              answer['text'] as String, () => answerQuestion(answer['score']));
        }).toList(),
      ],
    );
  }
}
