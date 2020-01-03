import 'package:flutter/material.dart';
import 'speech.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ButtonTheme(
          minWidth: 300,
          height: 300,
          child: RaisedButton(
            onPressed: Speech().listen,
            child: Text("Listen"),
          ),
        ),
      ),
    );
  }
}


