import 'package:flutter/material.dart';
import 'speech.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ButtonTheme(
          minWidth: 360,
          height: 640,
          child: ElevatedButton(
            onPressed: Speech().listen,
            child: const Text(
              "   Drücke mich,\n"
              "dann höre ich zu!",
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
      ),
    );
  }
}
