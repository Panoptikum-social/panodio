import 'tts.dart';

class Panodio {
  String command;
  Tts tts = new Tts();

  Panodio({required this.command}) {
    tts.speak(command);
  }
}
