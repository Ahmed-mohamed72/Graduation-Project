import 'package:flutter/material.dart';
import 'package:sakan/features/navigatoin_screens/chat_screen.dart';
import 'package:sakan/features/navigatoin_screens/home_screen.dart';
import 'package:sakan/features/navigatoin_screens/profile_screen.dart';
import 'package:sakan/features/navigatoin_screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List pages = const [
    HomeScreen(),
    ChatScreen(),
    SearchScreen(),
    ProfileScreen()
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
