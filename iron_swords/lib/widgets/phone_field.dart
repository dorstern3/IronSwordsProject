import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iron_swords/theme/palette.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 300,
      ),
      child: TextFormField(
        style: const TextStyle(color: Pallete.blackColor),
        textAlign: TextAlign.right,
        decoration: const InputDecoration(
          fillColor: Pallete.whiteColor,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 3,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
        ),
      ),
    );
  }
}

class ButtonPhoto extends StatelessWidget {
  const ButtonPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Pallete.whiteColor,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 120),
        side: const BorderSide(
          color: Colors.black,
          width: 3,
        ),
      ),
      onPressed: () {},
      child: const Text(
        'צלם',
        style: TextStyle(
          color: Colors.green,
          fontSize: 20,
        ),
      ),
    );
  }
}

class SignOut extends StatelessWidget {
  const SignOut({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Pallete.whiteColor,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
        side: const BorderSide(
          color: Colors.black,
          width: 3,
        ),
      ),
      child: const Text(
        'יציאה מהמשתמש',
        style: TextStyle(
          color: Colors.green,
          fontSize: 20,
        ),
      ),
      onPressed: () {
        FirebaseAuth.instance.signOut();
        Navigator.pop(context);
      },
    );
  }
}
