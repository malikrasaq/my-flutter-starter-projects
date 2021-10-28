import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(
      {required Color color, required int soundNumber, required String text}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1, text: 'play1'),
              buildKey(color: Colors.white, soundNumber: 2, text: 'play2'),
              buildKey(color: Colors.green, soundNumber: 3, text: 'play3'),
              buildKey(color: Colors.teal, soundNumber: 4, text: 'play4'),
              buildKey(color: Colors.yellow, soundNumber: 5, text: 'play5'),
              buildKey(color: Colors.purple, soundNumber: 6, text: 'play6'),
              buildKey(color: Colors.brown, soundNumber: 7, text: 'play7'),
            ],
          ),
        ),
      ),
    );
  }
}
