import 'package:flutter/material.dart';
import 'package:flutter_basics_widget/main.dart';

class ContainerRow extends StatelessWidget {
  final Color color;
  final IconData icon;
  final int index;

  ContainerRow({required this.color, required this.icon, required this.index});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: color,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green[600],
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GridScreen()),
            );
          },
          child: Icon(
            icon,
            color: color,
          ),
          tooltip: 'Go to Login Screen',
        ),
        appBar: AppBar(
          forceMaterialTransparency: false,
          title: const Text("Container Column..."),
          backgroundColor: color,
        ),
        body: SafeArea(
          child: Row(
            children: [
              Image.asset('bank_card.png'),
              Text('Second Item'),
              Text('Third Item'),
            ],
          ),
        ),
      ),
    );
  }
}
