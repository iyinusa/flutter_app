import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function ansQuestion;
  final int questionStage;

  Quiz({
    @required this.questions,
    @required this.ansQuestion,
    @required this.questionStage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionStage]['question'],
        ),
        ...(questions[questionStage]['answers'] as List<Map<String, Object>>)
            .map((ans) {
          return Answer(() => ansQuestion(ans['score']), ans['name']);
        }).toList()
      ],
    );
  }
}
