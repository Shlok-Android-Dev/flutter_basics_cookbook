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
          title: const Text("Container Row..."),
          backgroundColor: color,
        ),
        body: SafeArea(
          child: Row(
            children: [
              Image.asset('images/bank_card.png'),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.white,
                margin: EdgeInsets.all(20.0),
                child: Image.asset('images/success_redd.png'),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.pink,
                margin: EdgeInsets.all(20.0),
                child: Image.asset('images/nodatafound.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
