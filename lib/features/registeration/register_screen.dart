import 'package:flutter/material.dart';
import 'package:sakan/core/theming/colors.dart';
import 'package:sakan/core/widgets/bold_text.dart';
import 'package:sakan/core/widgets/custom_text_field.dart';
import 'package:sakan/core/widgets/main_button.dart';
import 'package:sakan/core/widgets/mini_text.dart';
import 'package:sakan/core/widgets/privacy_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                const BoldText(color: mainColor, size: 36, text: "إنشاء حساب"),
                const SizedBox(height: 6),
                const MiniText(
                    color: Color(0xff757575),
                    size: 16,
                    text:
                        "سجل الآن وابدأ في استكشاف كل ما يقدمه تطبيقنا. نحن متحمسون للترحيب بكم في مجتمعنا!"),
                const SizedBox(height: 40),
                const CustomTextField(hint: "Email"),
                const SizedBox(height: 20),
                const CustomTextField(hint: "Password"),
                const SizedBox(height: 20),
                const CustomTextField(hint: "Phone"),
                const SizedBox(height: 50),
                const MainButton(
                    buttonColor: mainColor,
                    borderColor: mainColor,
                    textColor: Colors.white,
                    text: "إنشاء حساب"),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Color(0xff00784A)),
                      ),
                    ),
                    const Text(' لديك حساب؟'),
                  ],
                ),
                const SizedBox(height: 55),
                const PrivcyText(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
