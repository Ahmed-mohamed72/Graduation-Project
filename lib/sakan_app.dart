import 'package:flutter/material.dart';
import 'package:sakan/features/onboarding/onboarding_screen1.dart';

class Sakan extends StatelessWidget {
  const Sakan({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBoardingScreen1(),
    );
  }
}
