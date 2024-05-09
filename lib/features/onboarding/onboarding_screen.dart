import 'package:flutter/material.dart';
import 'package:sakan/core/widgets/main_button.dart';
import 'package:sakan/features/login_or_register/login_or_register.dart';
import 'package:sakan/features/onboarding/onboarding_screen1.dart';
import 'package:sakan/features/onboarding/onboarding_screen2.dart';
import 'package:sakan/features/onboarding/onboarding_screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              setState(() {
                onLastPage = (value == 2);
              });
            },
            controller: _controller,
            children: const [
              OnBoardingScreen1(),
              OnBoardingScreen2(),
              OnBoardingScreen3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 500,
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const SlideEffect(
                    activeDotColor: Color(0xff32B768),
                    dotColor: Color(0xffE6E6E6),
                  ),
                ),
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const LoginOrRegister();
                              },
                            ),
                          );
                        },
                        child: const MainButton(
                            buttonColor: Color(0xffD1FAE5),
                            borderColor: Color(0xff32B768),
                            textColor: Color(0xff32B768),
                            text: 'إبدأ'),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: const MainButton(
                            buttonColor: Color(0xffD1FAE5),
                            borderColor: Color(0xff32B768),
                            textColor: Color(0xff32B768),
                            text: 'التالي'),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
