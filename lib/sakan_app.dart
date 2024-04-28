import 'package:flutter/material.dart';
import 'package:sakan/features/onboarding/onboarding_screen.dart';

class Sakan extends StatelessWidget {
  const Sakan({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
