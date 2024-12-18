import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButtom extends StatelessWidget {
  BottomButtom({required this.onTap, required this.buttomTitle});

  final Function()? onTap;
  final String buttomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.0),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttomTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
