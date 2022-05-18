import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff338F6D).withOpacity(0.5),
          borderRadius: BorderRadius.circular(24),
        ),
        child: TextField(
          cursorColor: Colors.white,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            fillColor: Colors.white,
            prefixIcon: Icon(
              icon,
              color: const Color(0xffFFE800),
            ),
            hintText: title,
            hintStyle: const TextStyle(
              color: Colors.white,
            ),
            contentPadding: const EdgeInsets.all(15),
            enabledBorder: InputBorder.none,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
