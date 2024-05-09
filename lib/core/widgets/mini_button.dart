import 'package:flutter/material.dart';
import 'package:sakan/core/widgets/bold_text.dart';

class MiniButton extends StatelessWidget {
  final double height;
  final double width;
  final Color textColor;
  final Color buttonColor;
  final String text;
  const MiniButton(
      {super.key,
      required this.height,
      required this.width,
      required this.textColor,
      required this.text,
      required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: buttonColor,
      ),
      child: Center(
        child: BoldText(
          color: textColor,
          size: 20,
          text: text,
        ),
      ),
    );
  }
}
