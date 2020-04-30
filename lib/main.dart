import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded callaudio({Color color,int number, int tunenumber} ) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playaudio(tunenumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              callaudio(color:Colors.red,tunenumber :1),
              callaudio(color:Colors.blue,tunenumber :2),
              callaudio(color:Colors.orange,tunenumber :3),
              callaudio(color:Colors.yellow,tunenumber :4),
              callaudio(color:Colors.pink,tunenumber :5),
              callaudio(color:Colors.grey,tunenumber :6),
              callaudio(color:Colors.cyan,tunenumber :7),
            ],
          ),
        ),
      ),
    );
  }
}

void playaudio(int tunenumber) {
  final player = AudioCache();
  player.play('note$tunenumber.wav');
}
