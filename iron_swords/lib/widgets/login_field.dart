import 'package:flutter/material.dart';
import 'package:iron_swords/pages/register.dart';
import 'package:iron_swords/theme/palette.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  final dynamic controllerLogin;
  const LoginField(
      {super.key, required this.hintText, required this.controllerLogin});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 300,
      ),
      child: TextFormField(
        style: const TextStyle(color: Pallete.blackColor),
        controller: controllerLogin,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Pallete.greenColor),
          fillColor: Pallete.whiteColor,
          filled: true,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 3,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  final dynamic onPressed;
  const ButtonLogin({super.key, required this.onPressed});

  @override
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
      onPressed: onPressed,
      child: const Text(
        'כניסה',
        style: TextStyle(
          color: Colors.green,
          fontSize: 20,
        ),
      ),
    );
  }
}

class RegisterNavigate extends StatelessWidget {
  const RegisterNavigate({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Pallete.whiteColor,
            side: const BorderSide(
              color: Colors.black,
              width: 3,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegisterPage()),
            );
          },
          child: const Center(
            child: Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: 'משתמש חדש? \n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                children: [
                  TextSpan(
                    text: 'כאן נרשמים',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
