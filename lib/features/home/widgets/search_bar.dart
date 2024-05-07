import 'package:flutter/material.dart';

class SearchSpace extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  const SearchSpace(
      {super.key,
      required this.height,
      required this.width,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Search",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
