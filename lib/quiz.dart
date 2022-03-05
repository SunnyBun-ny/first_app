import 'package:flutter/material.dart';
import './answer.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final Function questionAnswer;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz(
      {required this.questionAnswer,
      required this.questionIndex,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['question'] as String),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => questionAnswer(answer['score']), answer['option'] as String);
        }).toList(),
      ],
    );
  }
}
