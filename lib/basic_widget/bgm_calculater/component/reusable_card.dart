import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  ResuableCard({required this.colorbg, this.cardChild, this.onPress});

  final Color colorbg;
  final Widget? cardChild;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colorbg, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
