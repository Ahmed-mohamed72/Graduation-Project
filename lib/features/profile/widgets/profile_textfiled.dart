import 'package:flutter/material.dart';

class ProfileTextField extends StatelessWidget {
  final String hint;
  const ProfileTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextField(
        enabled: false,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.black87),
          ),
        ),
      ),
    );
  }
}
