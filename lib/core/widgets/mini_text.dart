import 'package:flutter/material.dart';

class MiniText extends StatelessWidget {
  final Color color;
  final double size;
  final String text;

  const MiniText(
      {super.key, required this.color, required this.size, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
