import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task_app/screens/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Test Task',
        debugShowCheckedModeBanner: false,
        home: Home(),
    );
  }
}
