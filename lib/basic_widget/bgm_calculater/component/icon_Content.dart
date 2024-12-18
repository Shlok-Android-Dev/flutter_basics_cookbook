import 'package:flutter/material.dart';
import '../constants.dart';

class genderCard extends StatelessWidget {
  genderCard({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          '$label',
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
