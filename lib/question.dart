import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String question;
  Question(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      color: Colors.amber,
      child: Text(
        question,
        style: TextStyle(
          fontSize: 50,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
