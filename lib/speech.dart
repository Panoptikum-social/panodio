import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'panodio.dart';

class Speech {
  var speech = SpeechToText();
  var panodio = Panodio();

  Speech() : super();

  listen() async {
    panodio.stopPlayer();
    bool available = await speech.initialize(
      onError: (error) => debugPrint("Error: ${error.toString()}"),
    );

    if (available) {
      speech.listen(
        onResult: (result) {
          if (result.finalResult == true) {
            panodio.execute(result.recognizedWords);
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
