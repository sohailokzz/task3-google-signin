import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../buttons/registration_bottom_buttons.dart';
import '../widgets/navigation_drawer.dart';
import '../widgets/textfield_registration.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({
    required this.googleSignIn,
    required this.user,
    Key? key,
  }) : super(key: key);

  final GoogleSignIn googleSignIn;
  final User user;

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: const Color(0xff005637),
      appBar: AppBar(
        backgroundColor: const Color(0xff00B673),
        title: const Text(
          'Driver Registration',
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            _key.currentState!.openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: Color(0xffFFE800),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.maps_ugc_rounded,
              color: Color(0xffFFE800),
            ),
          )
        ],
      ),
      drawer: NavigationDrawer(
        accountName: widget.user.displayName!,
        accountEmail: widget.user.email!,
        photoUrl: widget.user.photoURL!,
        onTap: () {
          widget.googleSignIn.signOut();
          Navigator.of(context).popUntil(ModalRoute.withName('/'));
        },
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: const [
              SizedBox(
                height: 25,
              ),
              Text(
                'Enter the following details: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              MyTextField(
                title: 'First Name',
                icon: Icons.person_outlined,
              ),
              MyTextField(
                title: 'Phone Number',
                icon: Icons.person_add_alt_outlined,
              ),
              MyTextField(
                title: 'CNIC Number',
                icon: Icons.contact_mail_outlined,
              ),
              MyTextField(
                title: 'Driver License Number',
                icon: Icons.person_outlined,
              ),
              MyTextField(
                title: 'Vehicle Registration Number',
                icon: Icons.car_crash_outlined,
              ),
              SizedBox(
                height: 25,
              ),
              RegistrationBottomButtons()
            ],
          ),
        ),
      ),
    );
  }
}
