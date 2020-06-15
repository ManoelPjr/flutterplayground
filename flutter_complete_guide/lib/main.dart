import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _questions = const [
    {
      'questionText': 'Qual a sua cor favorita?',
      'answer': [
        {'text': 'Preto', 'score': 10},
        {'text': 'Vermelho', 'score': 5},
        {'text': 'Verde', 'score': 3},
        {'text': 'Branco', 'score': 1},
      ],
    },
    {
      'questionText': 'Qual o seu animal favorito?',
      'answer': [
        {'text': 'Coelho', 'score': 3},
        {'text': 'Cobra', 'score': 11},
        {'text': 'Elefante', 'score': 5},
        {'text': 'Leão', 'score': 9},
      ],
    },
    {
      'questionText': 'Qual o seu instrutor favorito!!!',
      'answer': [
        {'text': 'Manoel', 'score': 1},
        {'text': 'Manoel', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    }
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
    //_totalScore = _totalScore + score;
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('You have more questions...');
    } else {
      print('No more questions!!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Strange Quiz!'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
