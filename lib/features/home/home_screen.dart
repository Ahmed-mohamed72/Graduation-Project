import 'package:flutter/material.dart';
import 'package:sakan/features/home/widgets/custome_app_bar.dart';
import 'package:sakan/features/home/widgets/sakan_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomeAppBar(),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext, int index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "DetailScreen");
                    },
                    child: const SakanCard());
              },
            ),
          ),
        ],
      ),
    );
  }
}
