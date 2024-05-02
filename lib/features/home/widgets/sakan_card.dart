import 'package:flutter/material.dart';
import 'package:sakan/core/widgets/bold_text.dart';

class SakanCard extends StatelessWidget {
  const SakanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      child: Container(
        height: 200,
        width: 330,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/sakan.png"),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.transparent, Colors.black87]),
          ),
          child: const Padding(
            padding: EdgeInsets.only(right: 13, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BoldText(color: Colors.white, size: 25, text: "المنيا الجديده"),
                Text(
                  "عدد الغرف 3, مطبخ, حمام",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                BoldText(color: Colors.white, size: 22, text: '3000- 3500 LE')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
