import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Random _random = new Random();
  Color _backgroundColor = Colors.white;
  Color _textColor;
  String _text = 'Hey there!';
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          _counter = _counter + 1;
          setState(() {
            _changeColor();
          });
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _text,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: _textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _changeColor() {
    int a = _random.nextInt(256);
    int r = _random.nextInt(256);
    int g = _random.nextInt(256);
    _backgroundColor = Color.fromRGBO(a, r, g, 1);
    _textColor = Colors.black;
    _text = 'Hey there!';
    if (_counter % 10 == 0) {
      _backgroundColor = Colors.blue;
      _textColor = Colors.yellow;
      _text = 'Congratulations!\nYou reached $_counter clicks';
      if(_counter % 50 == 0) {
        _text = '👑\nYou are a click master!\nYou reached $_counter clicks';
      }
    }
  }
}
