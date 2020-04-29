import 'dart:ui';

import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, this.onPressed, this.color});

  final IconData icon;
  final Function onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.8,
      child: Icon(
        icon,
        color: Colors.white,
        size: 20,
      ),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 40,
        height: 40.0,
      ),
      shape: CircleBorder(),
      fillColor: color,
    );
  }
}
