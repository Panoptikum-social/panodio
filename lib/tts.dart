import 'package:flutter_tts/flutter_tts.dart';

class Tts extends FlutterTts {
  Tts() : super() {
    setLanguage("de-DE"); // "en-GB", "en-US"
  }
}
