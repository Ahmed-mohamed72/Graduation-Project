import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sakan/core/widgets/bold_text.dart';
import 'package:sakan/core/widgets/custom_text_field.dart';
import 'package:sakan/core/widgets/main_button.dart';
import 'package:sakan/core/widgets/privacy_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 80),
                const Row(
                  children: [
                    BoldText(
                        color: Color(0xff32B768),
                        size: 25,
                        text: '👋مرحباً بعودتك')
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                    'نحن متحمسون لعودتك، ولا يمكننا الانتظار لنرى ما الذي قمت به منذ آخر مرة قمت فيها بتسجيل الدخول.'),
                const SizedBox(height: 85),
                CustomTextField(
                  hint: 'Email',
                ),
                const SizedBox(height: 25),
                CustomTextField(
                  hint: 'Password',
                ),
                const SizedBox(height: 15),
                const SizedBox(height: 60),
                const MainButton(
                  buttonColor: Color(0xffD1FAE5),
                  borderColor: Color(0xffD1FAE5),
                  textColor: Color(0xff10B981),
                  text: 'دخول',
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "RegisterScreen");
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Color(0xff00784A)),
                      ),
                    ),
                    const Text('ليس لديك حساب؟')
                  ],
                ),
                const SizedBox(height: 60),
                const PrivcyText(),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
