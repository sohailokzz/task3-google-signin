import 'package:flutter/material.dart';

class SignInFacebook extends StatelessWidget {
  const SignInFacebook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: const Color(0xff3B5999),
          padding: const EdgeInsets.all(0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            const CircleAvatar(
              radius: 25,
              child: Icon(
                Icons.facebook_sharp,
                size: 50,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Sign in with Facebook',
                  style: TextStyle(
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
