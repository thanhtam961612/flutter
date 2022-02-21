import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Result(this.totalScore, this.resetHandler);

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
          ElevatedButton(
              onPressed: () {
                resetHandler();
              },
              child: Text('restart quiz')),
        ],
      ),
    );
  }
}
