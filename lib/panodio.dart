import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'tts.dart';

class Panodio {
  Tts tts = Tts();
  final player = AudioPlayer();

  Panodio();

  void execute(String command) {
    if (command == "los") {
      player.setUrl(
          'https://3-schweinehun.de/episodes/3sh047_first_world_problems.mp3');
      player.play();
    } else if (command == "weiter") {
      player.play();
    } else {
      debugPrint(command);
      // tts.speak(command);
    }
  }

  void stopPlayer() {
    player.pause();
  }
}
