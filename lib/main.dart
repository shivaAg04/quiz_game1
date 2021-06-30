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
      'questionText': 'Which is not related to Distress?',
      'answers': [
        {'text': 'unemployment', 'score': 0},
        {'text': 'Emotional issue', 'score': 0},
        {'text': 'Eustress', 'score': 1},
        {'text': 'both A and B', 'score': 0}
      ]
    },
    {
      'questionText': 'what S stand in SMART goal ',
      'answers': [
        {'text': 'specific', 'score': 1},
        {'text': 'special', 'score': 0},
        {'text': 'space', 'score': 0},
        {'text': 'none', 'score': 0}
      ]
    },
    {
      'questionText': 'In which type of listening we easily get distracted',
      'answers': [
        {'text': 'active ', 'score': 0},
        {'text': 'passive', 'score': 1},
        {'text': 'both', 'score': 0},
        {'text': 'none', 'score': 0}
      ]
    },
    {
      'questionText': 'Positive stress is also called',
      'answers': [
        {'text': 'Ester', 'score': 0},
        {'text': 'Apistar', 'score': 0},
        {'text': 'Eustress', 'score': 1},
        {'text': 'none', 'score': 0}
      ]
    },
    {
      'questionText': ' which method of writing is used for dramatic narration',
      'answers': [
        {'text': 'Spatial', 'score': 0},
        {'text': 'exposition', 'score': 0},
        {'text': 'interrupted', 'score': 1},
        {'text': 'none', 'score': 0}
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
    // if (_questionIndex < _questions.length) {
    //   print('We have more  questions!');
    // } else {
    //   print('no more questions!');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz by shiva'),
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
