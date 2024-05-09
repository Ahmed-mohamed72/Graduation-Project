import 'package:flutter/material.dart';
import 'package:sakan/core/widgets/circle_picture.dart';
import 'package:sakan/core/widgets/search_text_filed.dart';

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
      child: Column(
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
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "ProfileScreen");
                },
                child: CirclePicture(
                  bigRadisu: 15,
                  minRadius: 13,
                  path: "",
                  color: Colors.white,
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
