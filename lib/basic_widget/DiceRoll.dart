import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_basics_widget/Utils/Utils.dart';

class DiceRoll extends StatefulWidget {
  final Color color;
  final IconData icon;
  final int index;

  DiceRoll({required this.color, required this.icon, required this.index});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  int leftButton = 1;
  int rightButton = 1;
  int topDice = 1;

  void topDiceNumber() {
    setState(() {
      topDice = Random().nextInt(6) + 1;
    });
  }

  void changeDiceNumber() {
    setState(() {
      leftButton = Random().nextInt(6) + 1;
      rightButton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext coantext) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dice Roll',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.yellow,
        ),
        body: Column(
          children: [
            Text(
              'Single Dice',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  Utils.toastMessage('left dice');
                  topDiceNumber();
                },
                child: Image.asset('images/dice$topDice.png'),
              ),
            ),
            Text(
              'Doubble Dice',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Center(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Utils.toastMessage('left dice');
                        changeDiceNumber();
                      },
                      child: Image.asset('images/dice$leftButton.png'),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        changeDiceNumber();

                        Utils.toastMessage('right dice');
                        leftButton = Random().nextInt(6) + 1;
                        rightButton = Random().nextInt(6) + 1;
                      },
                      child: Image.asset('images/dice$rightButton.png'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
