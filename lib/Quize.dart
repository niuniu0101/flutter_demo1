import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quize extends StatelessWidget {
  final List<Map<String, Object>> question2;
  final int questionIndex;
  final Function questionFunction;

  Quize(
      {required this.question2,
      required this.questionIndex,
      required this.questionFunction});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question2[questionIndex]["questionText"] as String),
        ...(question2[questionIndex]['answer'] as List<Map<String,Object>>).map((answer) {
          return Answer(() => questionFunction(answer['score'] as int), answer["text"] as String);
        }).toList()
      ],
    );
  }
}
