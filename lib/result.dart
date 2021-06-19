import 'package:flutter/material.dart';
import 'package:flutter_example_app/main.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;
  Result(this.score, this.reset);
  String get resultString {
    return 'Result : ';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultString + score.toString(),
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: reset,
            child: Text(
              'Restart Quiz',
            ),
            textColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}
