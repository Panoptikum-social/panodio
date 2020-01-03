import 'package:flutter_tts/flutter_tts.dart';

class Tts extends FlutterTts {
  Tts() : super() {
    this.setLanguage("de-DE"); // "en-GB", "en-US"
  }
}
