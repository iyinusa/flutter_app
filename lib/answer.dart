import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function responseData;
  final String answerItem;

  Answer(this.responseData, this.answerItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerItem),
        onPressed: responseData,
      ),
    );
  }
}
