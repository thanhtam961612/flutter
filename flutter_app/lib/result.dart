import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

  String get ResultPhrase {
    var s = "  ";
    if (totalScore == 0) {
      s = 'You lose';
    } else {
      s = 'You win';
    }
    return s;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            ResultPhrase + totalScore.toString(),
            style: TextStyle(color: Colors.blue, fontSize: 25),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(onPressed: null, child: Text('restart quiz')),
        ],
      ),
    );
  }
}
