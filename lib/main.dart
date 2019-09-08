import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded makeKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          new AudioCache().play("note$soundNumber.wav");
        },
        child: null,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              makeKey(color: Colors.deepPurple, soundNumber: 1),
              makeKey(color: Colors.pink, soundNumber: 2),
              makeKey(color: Colors.red, soundNumber: 3),
              makeKey(color: Colors.green, soundNumber: 4),
              makeKey(color: Colors.blue, soundNumber: 5),
              makeKey(color: Colors.orange, soundNumber: 6),
              makeKey(color: Colors.yellow, soundNumber: 7)
            ],
          )),
        ),
      ),
    );
  }
}
