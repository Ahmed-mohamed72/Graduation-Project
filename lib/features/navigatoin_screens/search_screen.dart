import 'package:flutter/material.dart';
import 'package:sakan/core/widgets/bold_text.dart';
import 'package:sakan/core/widgets/search_text_filed.dart';
import 'package:sakan/features/home/widgets/sakan_card.dart';
import 'package:sakan/features/home/widgets/search_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            size: 22,
            Icons.arrow_back_ios_new,
            color: Color(0xff3F3D56),
          ),
          onPressed: () => Navigator.pushNamed(context, "MainScreen"),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title:
            const BoldText(color: Color(0xff3F3D56), size: 18, text: "Search"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: SearchTextFiled(
              height: 45,
              width: 290,
              color: const Color(0xffEAF2FB).withOpacity(0.3),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext, int index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "DetailScreen");
                    },
                    child: const SakanCard());
              },
            ),
          ),
        ],
      ),
    );
  }
}
