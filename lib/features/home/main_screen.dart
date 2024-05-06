import 'package:flutter/material.dart';
import 'package:sakan/core/theming/colors.dart';
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
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 0,
          currentIndex: currentIndex,
          onTap: onTap,
          elevation: 0,
          selectedItemColor: mainColor,
          unselectedItemColor: const Color(0xff3F3D56).withOpacity(0.9),
          backgroundColor: const Color(0xffEAF2FB).withOpacity(0.3),
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Chat", icon: Icon(Icons.chat)),
            BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                label: "Favorite", icon: Icon(Icons.favorite)),
          ],
        ));
  }
}
