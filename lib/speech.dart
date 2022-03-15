import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'panodio.dart';

class Speech {
  var speech = SpeechToText();

  Speech() : super();

  listen() async {
    bool available = await speech.initialize(
      onError: (error) => debugPrint("Error: ${error.toString()}"),
    );

    if (available) {
      speech.listen(
        onResult: (result) {
          if (result.finalResult == true) {
            Panodio(command: result.recognizedWords);
          }
        },
        listenFor: const Duration(seconds: 5),
        localeId: "de_AT", // "en_GB", "en_US"
      );
    } else {
      debugPrint("Error: Access to Microphone denied");
    }
  }
}
