import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);



  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8.0),
      color: Colors.blue,
      child: ElevatedButton(
        child: Text(answerText, style: TextStyle(color: Colors.white),),
        onPressed: () => selectHandler() ,
      ),
    );
  }
}
