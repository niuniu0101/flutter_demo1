import 'package:atest/Quize.dart';
import 'package:atest/result.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var question = ["first question", "second question"];

  var question2 = [
    {
      "questionText": "what\'s your favourate color",
      "answer": [
        {"text": 'black', "score": 5},
        {"text": 'Red', "score": 10},
        {"text": "Green", "score": 20}
      ]
    },
    {
      "questionText": "what\'s your favourate animal",
      "answer": [{"text": 'cat', "score": 5},
        {"text": 'Red', "score": 10},
        {"text": "Green", "score": 20}]
    },
    {
      "questionText": "what\'s your favourate picture",
      "answer": [{"text": 'black', "score": 5},
        {"text": 'Red', "score": 10},
        {"text": "Green", "score": 20}],
    }
  ];
  var questionIndex = 0;
  int _totalScore = 0;
  void _questionFunction(int score) {

    _totalScore += score;
    setState(() {
      questionIndex = (1 + questionIndex);
    });

    if (questionIndex < question2.length) {
      print("show the answer");
    } else {
      print("nothing is here");
    }
    print("qustion${questionIndex}is chosen");
  }
  void _resetQuiz(){
    setState(() {
      _totalScore = 0;
      questionIndex = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: questionIndex < question2.length
            ? Quize(
                question2: question2,
                questionIndex: questionIndex,
                questionFunction: _questionFunction,
              )
            : Result(score:_totalScore,resetPoint: _resetQuiz,),
      ),
    );
  }
}
