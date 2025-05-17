import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});


  void playSound(int soundNumber) {
    final player = AudioPlayer(); // Create an AudioPlayer instance
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              TextButton(
                onPressed: () => playSound(1),
                child: Text('Click Me!', style: TextStyle(color: Colors.red.shade900, backgroundColor: Colors.red.shade900)),
              ),
              TextButton(
                onPressed: () => playSound(2),
                child: Text('Click Me!', style: TextStyle(color: Colors.orange.shade900, backgroundColor: Colors.orange.shade900)),
              ),
              TextButton(
                onPressed: () => playSound(3),
                child: Text('Click Me!', style: TextStyle(color: Colors.yellow.shade900, backgroundColor: Colors.yellow.shade900)),
              ),
              TextButton(
                onPressed: () => playSound(4),
                child: Text('Click Me!', style: TextStyle(color: Colors.blue.shade300, backgroundColor: Colors.blue.shade300)),
              ),
              TextButton(
                onPressed: () => playSound(5),
                child: Text('Click Me!', style: TextStyle(color: Colors.green.shade300, backgroundColor: Colors.green.shade300)),
              ),
              TextButton(
                onPressed: () => playSound(6),
                child: Text('Click Me!', style: TextStyle(color: Colors.green.shade900, backgroundColor: Colors.green.shade900)),
              ),
              TextButton(
                onPressed: () => playSound(7),
                child: Text('Click Me!', style: TextStyle(color: Colors.red.shade900, backgroundColor: Colors.red.shade900)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


