import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final VoidCallback answerpoint;

  final String answerText;

  Answer(this.answerpoint,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: answerpoint,
          child: Text(answerText),

      ),
    );
  }
}
