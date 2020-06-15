import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    //var resultText = 'You did it!'; not good pratice
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Você é incrível e inocente!';
    } else if (resultScore <= 12) {
      resultText = 'Bastante simpático!';
    } else if (resultScore <= 16) {
      resultText = 'Você é... estranho?!';
    } else {
      resultText = 'Tu és tão mau!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            color: Colors.green[50],
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
