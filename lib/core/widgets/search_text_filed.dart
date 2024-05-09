import 'package:flutter/material.dart';

class SearchTextFiled extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  const SearchTextFiled(
      {super.key,
      required this.color,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextField(
        cursorColor: const Color(0xff3F3D56),
        decoration: InputDecoration(
          fillColor: color,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: color,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(
              color: color,
            ),
          ),
          hintText: 'Search',
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
