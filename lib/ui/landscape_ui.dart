import 'package:flutter/material.dart';
import 'package:readwriteapp/ui/teams.dart';

class LandscapeUI extends StatefulWidget {
  const LandscapeUI({Key key}) : super(key: key);

  @override
  State<LandscapeUI> createState() => _LandscapeUIState();
}

class _LandscapeUIState extends State<LandscapeUI> {
  var play = "" ;
  var play2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Center(child: Text(play)),
              ),
            ),
            const Text("VS", style: TextStyle(fontSize: 25),),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Center(child: Text(play2)),
              ),
            ),

            IconButton(
              iconSize: 30,
              onPressed: () {
                setState(() {
                  play = getRandomImage() as String;
                  play2 = getRandomImage() as String;
                });
              },
              icon: const Icon(Icons.replay_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
