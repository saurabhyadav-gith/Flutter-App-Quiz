import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;
  void reset() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  final questions = [
    {
      'questionText': 'What\'s your favorite color',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 5},
        {'text': 'Green', 'score': 8},
        {'text': 'Purple', 'score': 3},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'text': 'Walrus', 'score': 5},
        {'text': 'Lion', 'score': 10},
        {'text': 'Dog', 'score': 9},
      ]
    },
    {
      'questionText': 'Who\'s your favorite actor',
      'answers': [
        {'text': 'Selmon', 'score': 5},
        {'text': 'Shahrukh', 'score': 6},
        {'text': 'Akshay', 'score': 8},
      ]
    },
  ];

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questions: questions,
                questionIndex: questionIndex,
              )
            : Result(totalScore, reset),
      ),
    );
  }
}
