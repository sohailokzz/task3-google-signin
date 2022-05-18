import 'package:flutter/material.dart';

class RegistrationBottomButtons extends StatelessWidget {
  const RegistrationBottomButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 120,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              padding: const EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
            child: const Text('Cancel'),
          ),
        ),
        SizedBox(
          width: 120,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: const Color(0xffFFE800),
              padding: const EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
            child: const Text(
              'Save',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
