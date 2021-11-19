import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetIt;

  Result(this.score, this.resetIt);

  String get resultInfo {
    String resultText;

    if (score <= 10) {
      resultText = 'You are a good Person!';
    } else if (score <= 20) {
      resultText = 'You are pretty nice Person!';
    } else if (score <= 30) {
      resultText = 'You are a biased Person!';
    } else {
      resultText = 'You are so bad of a Person!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultInfo,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Reset Quiz!'),
            onPressed: resetIt,
          )
        ],
      ),
    );
  }
}
