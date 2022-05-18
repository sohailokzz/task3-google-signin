import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task3/buttons/sign_in_facebook.dart';
import 'package:flutter_task3/buttons/sign_in_google.dart';
import 'package:flutter_task3/views/registration_view.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../buttons/sign_in_buttons.dart';
import '../widgets/my_rich_text.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool isUserSignedIn = false;

  @override
  void initState() {
    super.initState();

    checkIfUserIsSignedIn();
  }

  void checkIfUserIsSignedIn() async {
    var userSignedIn = await _googleSignIn.isSignedIn();

    setState(() {
      isUserSignedIn = userSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00784B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/task3logo.PNG',
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Select any Sign in option',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const MyButton(
              title: "Sign in with Phone Number",
              icon: Icons.phone,
            ),
            const SizedBox(
              height: 25,
            ),
            const SignInFacebook(),
            const SizedBox(
              height: 25,
            ),
            SignInGoogle(
              onTap: () {
                onGoogleSignIn();
              },
            ),
            const SizedBox(
              height: 25,
            ),
            const MyButton(
              title: "Sign in with Email",
              icon: Icons.email_outlined,
            ),
            const SizedBox(
              height: 25,
            ),
            const MyRichText(),
          ],
        ),
      ),
    );
  }

  Future<User> _handleSignIn() async {
    User? user;
    bool userSignedIn = await _googleSignIn.isSignedIn();

    setState(() {
      isUserSignedIn = userSignedIn;
    });

    if (isUserSignedIn) {
      user = _auth.currentUser;
    } else {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      user = (await _auth.signInWithCredential(credential)).user;
      userSignedIn = await _googleSignIn.isSignedIn();
      setState(() {
        isUserSignedIn = userSignedIn;
      });
    }

    return user!;
  }

  void onGoogleSignIn() async {
    User user = await _handleSignIn();
    var userSignedIn = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RegistrationView(
          googleSignIn: _googleSignIn,
          user: user,
        ),
      ),
    );

    setState(() {
      isUserSignedIn = userSignedIn == null ? true : false;
    });
  }
}
