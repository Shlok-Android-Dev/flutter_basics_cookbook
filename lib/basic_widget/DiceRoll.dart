import 'package:flutter/material.dart';

class DiceRoll extends StatelessWidget {
  final Color color;
  final IconData icon;
  final int index;

  DiceRoll({required this.color, required this.icon, required this.index});

  @override
  Widget build(BuildContext coantext) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text(
            'Dice Roll',
          ),
          backgroundColor: Colors.yellow,
        ),
        body: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Image.asset('images/dice1.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Image.asset('images/dice6.png'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
