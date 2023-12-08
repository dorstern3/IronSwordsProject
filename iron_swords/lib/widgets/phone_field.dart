import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 300,
      ),
      child: TextFormField(
        textAlign: TextAlign.right,
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2,
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
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 120),
        side: const BorderSide(
          color: Colors.black,
          width: 2,
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
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
        side: const BorderSide(
          color: Colors.black,
          width: 2,
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
      },
    );
  }
}
