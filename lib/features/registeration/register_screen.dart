import 'package:flutter/material.dart';
import 'package:sakan/core/theming/colors.dart';
import 'package:sakan/core/widgets/bold_text.dart';
import 'package:sakan/core/widgets/mini_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            BoldText(color: mainColor, size: 36, text: "إنشاء حساب"),
            SizedBox(height: 6),
            MiniText(
                color: Color(0xff757575),
                size: 16,
                text:
                    "سجل الآن وابدأ في استكشاف كل ما يقدمه تطبيقنا. نحن متحمسون للترحيب بكم في مجتمعنا!"),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
