import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resulutScore;
  final Function resethandler;

  Result(this.resulutScore, this.resethandler);

  String get resultphrase {
    String resultText;
    if (resulutScore == 1) {
      resultText =
          '1 anwer is correct very very bad!  Right Answers are :1.Eustress 2.Specific3.Passive4.Eustress5.interrupted';
    } else if (resulutScore == 2) {
      resultText =
          '2 anwers are correct very bad!   Right Answers are :1.Eustress 2.Specific3.Passive4.Eustress5.interrupted';
    } else if (resulutScore == 3) {
      resultText =
          ' 3 answers are correct nice!   Right Answers are :1.Eustress 2.Specific3.Passive4.Eustress5.interrupted';
    } else if (resulutScore == 4) {
      resultText =
          ' 4 answers are correct goood!  Right Answers are :1.Eustress 2.Specific3.Passive4.Eustress5.interrupted';
    } else if (resulutScore == 5) {
      resultText =
          ' 5 answers are correct very goood!  Right Answers are :1.Eustress 2.Specific3.Passive4.Eustress5.interrupted';
    } else {
      resultText = 'please do study I request you  ';
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
