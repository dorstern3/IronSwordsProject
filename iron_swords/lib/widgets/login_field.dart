import 'package:flutter/material.dart';
import 'package:iron_swords/pages/register.dart';

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
        controller: controllerLogin,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2,
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
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 120),
        side: const BorderSide(
          color: Colors.black,
          width: 2,
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
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 120),
          side: const BorderSide(
            color: Colors.black,
            width: 2,
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
    );
  }
}
