import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sakan/core/widgets/main_button.dart';
import 'package:sakan/core/widgets/privacy_text.dart';
import 'package:sakan/features/registeration/login_screen.dart';

class LoginOrRegister extends StatelessWidget {
  const LoginOrRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: SvgPicture.asset(
                'assets/images/login-or-register-choice.svg',
                height: 250,
                width: 250,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              '🙌مرحباً',
              style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('يرجى التسجيل أولاً قبل الإستمتاع بخدمات'),
            ),
            const Text('Sakan'),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "RegisterScreen");
              },
              child: const MainButton(
                buttonColor: Color(0xffD1FAE5),
                borderColor: Color(0xffD1FAE5),
                textColor: Color(0xff32B768),
                text: 'إنشاء حساب',
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) {
                      return const LoginPage();
                    }),
                  ),
                );
              },
              child: const MainButton(
                buttonColor: Color(0xff32B768),
                borderColor: Color(0xff32B768),
                textColor: Colors.white,
                text: 'دخول',
              ),
            ),
            const SizedBox(height: 20),
            const PrivcyText()
          ],
        ),
      ),
    );
  }
}
