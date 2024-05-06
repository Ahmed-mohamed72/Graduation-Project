import 'package:flutter/material.dart';
import 'package:sakan/features/details/details_screen.dart';
import 'package:sakan/features/home/main_screen.dart';
import 'package:sakan/features/onboarding/onboarding_screen.dart';
import 'package:sakan/features/registeration/login_screen.dart';
import 'package:sakan/features/registeration/register_screen.dart';

class Sakan extends StatelessWidget {
  const Sakan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'LoginScreen': (context) => const LoginPage(),
        'RegisterScreen': (context) => const RegisterScreen(),
        'DetailScreen': (context) => const DetailScreen(),
      },
      home: const MainScreen(),
    );
  }
}
