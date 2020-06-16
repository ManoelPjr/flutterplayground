import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String mainText;

  TextOutput(this.mainText);

  @override
  Widget build(BuildContext context) {
    return Text(
      mainText,
      style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
