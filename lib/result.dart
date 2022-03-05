import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int _totalScore;
  VoidCallback _resetQuiz;
  Result(this._totalScore, this._resetQuiz);

  String get resultPhrase {
    String phrase;
    if (_totalScore == 0) {
      phrase = 'Better luck next time!!!';
    } else if (_totalScore == 10) {
      phrase = 'Need more work!!';
    } else if (_totalScore == 20 || _totalScore == 30) {
      phrase = 'Not so bad!!';
    } else if (_totalScore == 40) {
      phrase = 'Amazing!!!';
    } else {
      phrase = 'Genius..!!!';
    }
    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Center(
            child: Text(
              'Score : $_totalScore/50',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          child: Divider(
            color: Color.fromARGB(255, 255, 191, 0),
            thickness: 2.0,
          ),
          margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 60.0),
        ),
        Container(
          child: Center(
            child: Text(
              resultPhrase,
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Container(
          child: FlatButton(
              child: Text('Take Quiz again?'),
              textColor: Color.fromARGB(255, 232, 63, 111),
              onPressed: _resetQuiz),
        ),
      ],
    );
  }
}
