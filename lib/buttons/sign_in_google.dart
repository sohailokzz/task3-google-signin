import 'package:flutter/material.dart';

class SignInGoogle extends StatelessWidget {
  const SignInGoogle({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
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
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                'assets/images/googlelogo.png',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Sign in with Google',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
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
