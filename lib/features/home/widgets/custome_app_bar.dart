import 'package:flutter/material.dart';
import 'package:sakan/core/widgets/search_text_filed.dart';
import 'package:sakan/features/home/widgets/search_bar.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: double.maxFinite,
      height: 170,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Color(0xff09D874), Color(0xff8BEDBE)]),
      ),
      child: const Column(
        children: [
          SizedBox(
            height: 55,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.circle_notifications_rounded,
                color: Colors.white,
                size: 29,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 15,
                child: CircleAvatar(
                  radius: 13,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          SearchTextFiled(
            height: 40,
            width: 274,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
