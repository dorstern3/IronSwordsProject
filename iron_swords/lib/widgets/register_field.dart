import 'package:flutter/material.dart';

class RegistrField extends StatelessWidget {
  final String hintText;
  final dynamic controllerRegister;
  const RegistrField(
      {super.key, required this.hintText, required this.controllerRegister});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 300,
      ),
      child: TextFormField(
        controller: controllerRegister,
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

class ButtonRegister extends StatelessWidget {
  final dynamic onPressed;
  const ButtonRegister({super.key, required this.onPressed});

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

class LoginNavigate extends StatelessWidget {
  const LoginNavigate({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 90),
          side: const BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Center(
          child: Text.rich(
            TextSpan(
              text: 'האם אתה כבר רשום? \n',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              children: [
                TextSpan(
                  text: 'כניסה',
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
