// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'dart:math';
import 'package:readwriteapp/ui/teams.dart';

class PortraitUI extends StatefulWidget {
  const PortraitUI({Key key}) : super(key: key);

  @override
  State<PortraitUI> createState() => _PortraitUIState();
}

class _PortraitUIState extends State<PortraitUI> {
  var play = Image.asset("images/Manutd.png", height: 100, width: 100);
  var play2 = Image.asset("images/Arsenal.png", height: 100, width: 100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Center(child: play),
              ),
            ),
            Text("VS", style: TextStyle(fontSize: 25),),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Center(child: play2),
              ),
            ),
            IconButton(
              iconSize: 30,
              onPressed: () {
                setState(() {
                  play = getRandomImage();
                  play2 = getRandomImage();
                });
              },
              icon: const Icon(Icons.replay_outlined),
            ),
            Container(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
