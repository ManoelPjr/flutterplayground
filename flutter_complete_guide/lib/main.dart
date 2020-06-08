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
      'questionText': 'What\'s your favorite collor?',
      'answer': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answer': ['Max', 'Max', 'Max', 'Max'],
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
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
          title: Text('My First App.'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
