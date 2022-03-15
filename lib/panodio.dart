import 'tts.dart';

class Panodio {
  String command;
  Tts tts = Tts();

  Panodio({required this.command}) {
    tts.speak(command);
  }
}
