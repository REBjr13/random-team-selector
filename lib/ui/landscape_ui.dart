import 'package:flutter/material.dart';
import 'package:readwriteapp/ui/teams.dart';

class LandscapeUI extends StatefulWidget {
  const LandscapeUI({Key key}) : super(key: key);

  @override
  State<LandscapeUI> createState() => _LandscapeUIState();
}

class _LandscapeUIState extends State<LandscapeUI> {
  var play = Image.asset("images/Manutd.png", height: 100, width: 100);
  var play2 = Image.asset("images/Arsenal.png", height: 100, width: 100);

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
                child: Center(child: play),
              ),
            ),
            const Text("VS", style: TextStyle(fontSize: 25),),
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
          ],
        ),
      ),
    );
  }
}
