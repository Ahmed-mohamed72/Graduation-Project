import 'package:flutter/material.dart';
import 'package:sakan/core/widgets/bold_text.dart';
import 'package:sakan/core/widgets/custom_text_field.dart';
import 'package:sakan/core/widgets/main_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: const [
            Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  children: [
                    BoldText(
                        color: Color(0xff32B768),
                        size: 25,
                        text: '👋مرحباً بعودتك')
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'نحن متحمسون لعودتك، ولا يمكننا الانتظار لنرى ما الذي قمت به منذ آخر مرة قمت فيها بتسجيل الدخول.'),
                SizedBox(
                  height: 85,
                ),
                CustomTextField(
                  hint: 'Email',
                ),
                SizedBox(
                  height: 25,
                ),
                CustomTextField(
                  hint: 'Password',
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 60,
                ),
                MainButton(
                  buttonColor: Color(0xffD1FAE5),
                  borderColor: Color(0xffD1FAE5),
                  textColor: Color(0xff10B981),
                  text: 'دخول',
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  'By logging in or registering, you have agreed to the',
                  style: TextStyle(fontSize: 12),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '    Terms and Conditions',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff32B768),
                      ),
                    ),
                    Text(
                      ' And ',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff32B768),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(color: Color(0xff00784A)),
                    ),
                    Text('ليس لديك حساب؟')
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
