import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: const Color(0xffD3C01F),
          padding: const EdgeInsets.all(0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: Icon(
                icon,
                color: const Color(0xffD3C01F),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
