import 'package:flutter/material.dart';

import './Quiz.dart';
import './Result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What\'s your favourite Colour?',
      'answers': [
        {'name': 'Black', 'score': 10},
        {'name': 'Red', 'score': 8},
        {'name': 'Green', 'score': 6},
        {'name': 'White', 'score': 4}
      ]
    },
    {
      'question': 'What\'s your favourite Animal?',
      'answers': [
        {'name': 'Rabbit', 'score': 10},
        {'name': 'Snake', 'score': 8},
        {'name': 'Elephant', 'score': 6},
        {'name': 'Lion', 'score': 4}
      ]
    },
    {
      'question': 'Who\'s your favourite Instructor?',
      'answers': [
        {'name': 'John', 'score': 10},
        {'name': 'Kennedy', 'score': 8},
        {'name': 'Yinusa', 'score': 6}
      ]
    },
  ];

  var isActive = true;
  var _questionStage = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionStage = 0;
      _totalScore = 0;
    });
  }

  void _ansQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionStage = _questionStage + 1;
    });

    if (_questionStage < _questions.length) {
      // isActive = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Demo App'),
        ),
        body: _questionStage < _questions.length
            ? Quiz(
                questions: _questions,
                ansQuestion: _ansQuestion,
                questionStage: _questionStage)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
