import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Don't have an account?",
        style: const TextStyle(
          fontSize: 16,
        ),
        children: [
          TextSpan(
            text: ' Sign up',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(text: ' here!'),
        ],
      ),
    );
  }
}
