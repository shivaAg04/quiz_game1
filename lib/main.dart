import 'package:flutter/material.dart';

import './quiz.dart';

import './result.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  final _questions = [
    {
      'questionText': 'what\'s your favorite colour?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'pink', 'score': 7},
        {'text': 'red', 'score': 5},
        {'text': 'blue', 'score': 3}
      ]
    },
    {
      'questionText': 'what\'s your favorite  animal?',
      'answers': [
        {'text': 'rabbit', 'score': 1},
        {'text': ' dog', 'score': 7},
        {'text': ' cat', 'score': 9},
        {'text': ' lion', 'score': 3}
      ]
    },
    {
      'questionText': 'what\'s your favorite club?',
      'answers': [
        {'text': ' dsc', 'score': 10},
        {'text': ' dsc', 'score': 7},
        {'text': ' dsc', 'score': 5},
        {'text': ' only dsc', 'score': 53}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more  questions!');
    } else {
      print('no more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('quiz by shiva'),
          backgroundColor: Colors.blue,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
