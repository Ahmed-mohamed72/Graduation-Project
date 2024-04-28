import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainButton extends StatelessWidget {
  final Color buttonColor;
  final Color borderColor;
  final Color textColor;
  final String text;

  const MainButton(
      {super.key,
      required this.buttonColor,
      required this.borderColor,
      required this.textColor,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 58,
        width: 311,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 2,
          ),
          color: buttonColor,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ));
  }
}
