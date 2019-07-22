import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class XyloPhone extends StatefulWidget {
  @override
  _XyloPhoneState createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {
  static AudioCache player = new AudioCache();
  void playSound(int trackId) {
    player.play('note$trackId.wav');
  }

  List<Widget> createXylo() {
    final finallist = List<Widget>();
    final List<Color> colors = [
      Colors.red,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.purple,
      Colors.pink,
      Colors.orange,
    ];
    for (int i = 0; i < 7; ++i) {
      finallist.add(Expanded(
        child: FlatButton(
          color: colors[i],
          onPressed: () {
            playSound(i + 1);
          },
          child: SizedBox(
            height: 83,
          ),
        ),
      ));
    }
    return finallist;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: createXylo(),
        ),
      ),
    );
  }
}
