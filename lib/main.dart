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

  final questions = [
    {
      'questionText': 'What\'s your favorite color',
      'answers': ['Black', 'White', 'Green', 'Purple']
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': ['Walrus', 'Lion', 'Dog']
    },
    {
      'questionText': 'Who\'s your favorite actor',
      'answers': ['Selmon', 'Shahrukh', 'Akshay']
    },
  ];

  void answerQuestion() {
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
            : Result(),
      ),
    );
  }
}
