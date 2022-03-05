import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answer;
  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
      width: 500.0,
      child: RaisedButton(
        child: Text(answer),
        color: Color.fromARGB(255, 255, 191, 0),
        onPressed: selectHandler,
        hoverColor: Colors.grey,
      ),
    );
  }
}
