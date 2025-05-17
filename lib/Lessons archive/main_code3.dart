import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final AudioPlayer player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({Color? color, required int soundNumber}) { // Use nullable types for parameters
    return Expanded(
      child: TextButton( // Use TextButton instead of FlatButton
        style: TextButton.styleFrom(
          backgroundColor: color, // Set the background color
          shape: const RoundedRectangleBorder( // Optional: Add a shape if needed
            borderRadius: BorderRadius.zero, // Example: No rounded corners
          ),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(), // TextButton requires a child, even if it's empty for a simple colored button
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
            children: <Widget>[
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