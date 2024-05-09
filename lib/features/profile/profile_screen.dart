import 'package:flutter/material.dart';
import 'package:sakan/core/widgets/bold_text.dart';
import 'package:sakan/core/widgets/circle_picture.dart';
import 'package:sakan/core/widgets/mini_button.dart';
import 'package:sakan/features/profile/widgets/profile_textfiled.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            size: 22,
            Icons.arrow_back_ios_new,
            color: Color(0xff3F3D56),
          ),
          onPressed: () => Navigator.pushNamed(context, "MainScreen"),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title:
            const BoldText(color: Color(0xff3F3D56), size: 18, text: "Profile"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const Center(
            child: CirclePicture(
              bigRadisu: 70,
              minRadius: 68,
              path: '',
              color: Color(0xff3F3D56),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.only(left: 25, right: 15),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BoldText(color: Color(0xff3F3D56), size: 18, text: "Full Name"),
                ProfileTextField(hint: "Ahmed Mohamed"),
                SizedBox(height: 10),
                BoldText(color: Color(0xff3F3D56), size: 18, text: "Phone"),
                ProfileTextField(hint: "01110047765"),
                SizedBox(height: 10),
                BoldText(color: Color(0xff3F3D56), size: 18, text: "Email"),
                ProfileTextField(hint: "ahmed.mohamed@gmail.com"),
                SizedBox(height: 10),
                BoldText(color: Color(0xff3F3D56), size: 18, text: "City"),
                ProfileTextField(hint: "المنيا"),
                SizedBox(height: 22),
                Center(
                  child: MiniButton(
                      height: 50,
                      width: 110,
                      textColor: Colors.white,
                      text: "Log Out",
                      buttonColor: Colors.red),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
