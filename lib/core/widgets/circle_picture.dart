import 'package:flutter/material.dart';

class CirclePicture extends StatelessWidget {
  final double bigRadisu;
  final double minRadius;
  final String path;
  final Color color;
  const CirclePicture(
      {super.key,
      required this.bigRadisu,
      required this.minRadius,
      required this.path,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      radius: bigRadisu,
      child: CircleAvatar(
        radius: minRadius,
        backgroundImage: AssetImage("assets/images/profile.jpg"),
      ),
    );
  }
}
