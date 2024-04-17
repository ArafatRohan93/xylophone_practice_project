import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              buildKey(color: Colors.red, audioFileIndex: 1),
              buildKey(color: Colors.orange, audioFileIndex: 2),
              buildKey(color: Colors.yellow, audioFileIndex: 3),
              buildKey(color: Colors.green, audioFileIndex: 4),
              buildKey(color: Colors.teal, audioFileIndex: 5),
              buildKey(color: Colors.blue, audioFileIndex: 6),
              buildKey(color: Colors.purple, audioFileIndex: 7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildKey({required Color color, required int audioFileIndex}) {
    return Expanded(
      child: GestureDetector(
        onTap: () => playSound(audioFileIndex),
        child: Container(
          color: color,
        ),
      ),
    );
  }

  void playSound(int audioFileIndex) {
    AudioPlayer player = AudioPlayer();
    player.play(
      AssetSource(
        'note$audioFileIndex.wav',
      ),
    );
  }
}
