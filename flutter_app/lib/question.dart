import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    print(questionText);
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.blue,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.only(top: 10.0),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
