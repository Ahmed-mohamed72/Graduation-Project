import 'package:flutter/material.dart';
import 'package:sakan/core/theming/colors.dart';
import 'package:sakan/core/widgets/bold_text.dart';
import 'package:sakan/core/widgets/mini_text.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/sakan.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 15,
              top: 50,
              right: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 320,
              child: Container(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                height: 420,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BoldText(
                            color: Color(0xff3F3D56),
                            size: 20,
                            text: "3000 - 3200LE"),
                        BoldText(
                            color: Color(0xff3F3D56), size: 28, text: "المنيا"),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xff3F3D56),
                          size: 19,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "المنيا الجديده",
                          style: TextStyle(color: Color(0xff3F3D56)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 13),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) {
                              return const Icon(
                                Icons.star_border,
                                color: Color.fromARGB(255, 134, 117, 73),
                                size: 22,
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "(0.5)",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        BoldText(
                            color: Color(0xff3F3D56),
                            size: 25,
                            text: ":المواصفات"),
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const MiniText(
                          color: Color(0xff3F3D56),
                          size: 17,
                          text:
                              "شقه دور ارضي تشطيب سوبر لوكس شامل جميع الخدمات كهرباء, غاز, مياه, كل غرفه تحتوي علي 2 سرير , جميع الفواتير علي مالك السكن  "),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 650,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 55,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xffD1FAE5)),
                    child: const Center(
                      child: BoldText(
                        color: mainColor,
                        size: 20,
                        text: "حجز الأن",
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: mainColor),
                    child: const Center(
                      child: BoldText(
                        color: Colors.white,
                        size: 20,
                        text: "مراسله الأن",
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
