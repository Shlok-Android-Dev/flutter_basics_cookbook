import 'package:flutter/material.dart';

class RoundIconButtom extends StatelessWidget {
  const RoundIconButtom({required this.icon, this.weight, this.onPressed});

  final IconData icon;
  final int? weight;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
