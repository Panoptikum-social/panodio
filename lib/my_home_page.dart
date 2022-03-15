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
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.deepOrange, // background
            onPrimary: Colors.white, // foreground
          ),
          onPressed: Speech().listen,
          child: const Text(
            "   Drücke mich,\n"
            "dann höre ich zu!",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
