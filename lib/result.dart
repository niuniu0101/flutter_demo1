import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetPoint;
  Result({required this.score, required this.resetPoint});

  String get resultPhrase {
    String resultText;
    if (score <= 8) {
      resultText = "you are awesome and innmcent";
    } else if (score <= 15) {
      resultText = "you are great";
    } else {
      resultText = "you are wonderful";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetPoint, child: Text("press this to reset the game"))
        ],
      )
    );
  }
}
