import 'package:flutter/material.dart';
import 'package:flutter_app/answer.dart';
import 'package:flutter_app/quiz.dart';
import './question.dart';
import './question.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    print('run answer question');
    _totalScore += score;
    setState(() {
      //   if (_questionIndex == question.length - 1) {
      //     var s = 'question ' + question.length.toString();
      //     var newQuest =   {
      //   'question': s,
      //   'answers': ['A', 'B', 'C', 'D']
      // };
      //     question.add(newQuest);
      //   }
      if (_questionIndex < question.length) {
        _questionIndex = _questionIndex + 1;
      } else {
        print("no more question");
      }
      print(_questionIndex);
    });
  }

  var question = [
    {
      'question': 'what ur name',
      'answers': [{'text' : 'A','score' : 0 }, {'text' : 'B','score' : 10 }, {'text' : 'C','score' : 0 }, {'text' : 'D','score' : 0 }]
    },
    {
      'question': 'what ur age',
      'answers': [{'text' : 'A','score' : 0 }, {'text' : 'B','score' : 10 }, {'text' : 'C','score' : 0 }, {'text' : 'D','score' : 0 }]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: _questionIndex < question.length
              ? Quiz(
                  questions: question,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex)
              : Result(_totalScore)),
    );
  }
}
