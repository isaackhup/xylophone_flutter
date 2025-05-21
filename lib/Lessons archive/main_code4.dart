import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  // buildKey({Color? color, required int soundNumber}) {
  //   return Expanded(
  //     child: TextButton(
  //       style: TextButton.styleFrom(                      //style
  //         backgroundColor: color,
  //         shape: const RoundedRectangleBorder(
  //           borderRadius: BorderRadius.zero,
  //         ),
  //       ),
  //       onPressed: () {                                   //onPressed:
  //         playSound(soundNumber);
  //       },
  //       child: Container(),                               //child
  //     ),
  //   );
  // }

  Expanded buildKey({
    required Color color,
    required int soundNumber,
    String? label, // optional label text
  }) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Center(
          child: Text(
            label ?? 'Note $soundNumber',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

