import 'dart:io';

import './quiz.dart';
import './result.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;
  static const _questions = [
    {
      'question':
          'What is the longest that an elephant has ever lived? (That we know of)',
      'answer': [
        {'option': '17 years', 'score': 0},
        {'option': '142 years', 'score': 10},
        {'option': '49 years', 'score': 0},
        {'option': '89 years', 'score': 0}
      ]
    },
    {
      'question': 'How many rings are on the Olympic flag?',
      'answer': [
        {'option': 'None', 'score': 0},
        {'option': '4', 'score': 0},
        {'option': '5', 'score': 10},
        {'option': '7', 'score': 0}
      ]
    },
    {
      'question':
          'In darts, what\'s the most points you can score with a single throw?',
      'answer': [
        {'option': '20', 'score': 0},
        {'option': '40', 'score': 0},
        {'option': '60', 'score': 0},
        {'option': '100', 'score': 10}
      ]
    },
    {
      'question':
          'Which of these animals does NOT appear in the Chinese zodiac?',
      'answer': [
        {'option': 'Bear', 'score': 0},
        {'option': 'Rabbit', 'score': 0},
        {'option': 'Dragon', 'score': 10},
        {'option': 'Dog', 'score': 0}
      ]
    },
  ];

  void _questionAnswer(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: ()=>{exit(0)},
            ),
          ],
          title: Text("Quiz App"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 232, 63, 111),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionAnswer: _questionAnswer,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
        backgroundColor: Colors.white,
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
