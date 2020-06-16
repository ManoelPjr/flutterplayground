import 'package:flutter/material.dart';

import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _mainText = 'This is the original text!';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          TextOutput(_mainText),
          RaisedButton(
              child: Text(
                'Alter Text',
              ),
              textColor: Colors.blue,
              color: Colors.green[50],
              onPressed: () {
                setState(() {
                  _mainText = 'This is the altered text!';
                });
              }),
        ],
      ),
    );
  }
}
