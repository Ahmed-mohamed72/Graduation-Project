import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sakan/core/widgets/bold_text.dart';
import 'package:sakan/core/widgets/main_button.dart';
import 'package:sakan/core/widgets/mini_text.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 50,
                width: 170,
                child: Image.asset("assets/images/sakan_logo.png"),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 224,
                width: 280,
                child: SvgPicture.asset('assets/images/location_search.svg'),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 40),
                child: const BoldText(
                    color: Color(0xff3F3D56),
                    size: 36,
                    text: 'البحث عن السكن أصبح أسهل الأن'),
              ),
              const SizedBox(
                height: 10,
              ),
              const MiniText(
                  color: Color(0xff757575),
                  size: 14,
                  text:
                      'إبحث بسهوله, من الأن وصاعداً لن تحتاج إلي النزول من منزلك '),
              const MiniText(
                  color: Color(0xff757575), size: 14, text: ' .منزلك '),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 30,
              ),
              const MainButton(
                  buttonColor: Color(0xffD1FAE5),
                  borderColor: Color(0xff32B768),
                  textColor: Color(0xff32B768),
                  text: 'التالي')
            ],
          ),
        ),
      ),
    );
  }
}
