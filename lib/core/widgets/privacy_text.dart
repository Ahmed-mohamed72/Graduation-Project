import 'package:flutter/material.dart';

class PrivcyText extends StatelessWidget {
  const PrivcyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'By logging in or registering, you have agreed to the',
          style: TextStyle(fontSize: 10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '    Terms and Conditions',
              style: TextStyle(
                fontSize: 11,
                color: Color(0xff32B768),
              ),
            ),
            Text(
              ' And ',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 11,
                color: Color(0xff32B768),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
