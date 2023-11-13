import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(String soundFileName) async {
    final player = AudioPlayer();
    await player.play(AssetSource(soundFileName));
  }

  Widget buildSoundButton(Color buttonColor, String soundFileName) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => playSound(soundFileName),
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone App',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildSoundButton(Colors.red, 'note1.wav'),
              buildSoundButton(Colors.orange, 'note2.wav'),
              buildSoundButton(Colors.yellow, 'note3.wav'),
              buildSoundButton(Colors.green, 'note4.wav'),
              buildSoundButton(Colors.blue, 'note5.wav'),
              buildSoundButton(Colors.indigo, 'note6.wav'),
              buildSoundButton(Colors.purple, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
