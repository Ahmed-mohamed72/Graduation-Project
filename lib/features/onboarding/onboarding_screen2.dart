import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sakan/core/widgets/bold_text.dart';
import 'package:sakan/core/widgets/main_button.dart';
import 'package:sakan/core/widgets/mini_text.dart';

class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2({super.key});

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
                height: 23,
              ),
              SizedBox(
                height: 215,
                width: 265,
                child: SvgPicture.asset('assets/images/chose-home.svg'),
              ),
              const SizedBox(
                height: 20,
              ),
              const BoldText(
                  color: Color(0xff3F3D56),
                  size: 36,
                  text: 'إختر المكان المناسب '),
              const BoldText(color: Color(0xff3F3D56), size: 36, text: 'لك'),
              const SizedBox(
                height: 10,
              ),
              const MiniText(
                  color: Color(0xff757575),
                  size: 14,
                  text: 'إختر مكانك المناسب من جميع الاماكن المتاحه لدينا ثم'),
              const MiniText(
                  color: Color(0xff757575),
                  size: 14,
                  text: '.ابدأ رحلتك نحو الحج'),
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
