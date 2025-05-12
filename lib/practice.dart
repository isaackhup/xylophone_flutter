import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final AudioPlayer player = AudioPlayer();

  XylophoneApp({super.key});

  void playSound(int soundNumber) {
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
                child: Text('Click Me!', style: TextStyle(color: Colors.red.shade900, backgroundColor: Colors.red.shade900,),),
              ),
              TextButton(
                onPressed: () => playSound(2),
                child: const Text('Click Me!', style: TextStyle(color: Colors.red, backgroundColor: Colors.red,),),
              ),
              TextButton(
                onPressed: () => playSound(3),
                child: const Text('Click Me!', style: TextStyle(color: Colors.teal, backgroundColor: Colors.teal,),),
              ),
              TextButton(
                onPressed: () => playSound(4),
                child: const Text('Click Me!', style: TextStyle(color: Colors.yellow, backgroundColor: Colors.yellow,),),
              ),
              TextButton(
                onPressed: () => playSound(5),
                child: const Text('Click Me!', style: TextStyle(color: Colors.orange, backgroundColor: Colors.orange,),),
              ),
              TextButton(
                onPressed: () => playSound(6),
                child: Text('Click Me!', style: TextStyle(color: Colors.blue.shade300, backgroundColor: Colors.blue.shade300,),),
              ),
              TextButton(
                onPressed: () => playSound(7),
                child: const Text('Click Me!', style: TextStyle(color: Colors.blue, backgroundColor: Colors.blue,),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




