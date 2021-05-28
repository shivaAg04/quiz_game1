import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resulutScore;
  final Function resethandler;

  Result(this.resulutScore, this.resethandler);

  String get resultphrase {
    String resultText;
    if (resulutScore <= 10) {
      resultText = 'great';
    } else if (resulutScore <= 20) {
      resultText = 'hurray';
    } else if (resulutScore <= 40) {
      resultText = ' amazing';
    } else {
      resultText = 'you are devil';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultphrase,
        style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      TextButton(
        child: Text('Restart Quiz'),
        onPressed: resethandler,
      )
    ]));
  }
}
