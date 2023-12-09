import 'package:flutter/material.dart';
import 'package:iron_swords/theme/palette.dart';

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
        style: const TextStyle(color: Pallete.blackColor),
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

class ButtonRegister extends StatelessWidget {
  final dynamic onPressed;
  const ButtonRegister({super.key, required this.onPressed});

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

class LoginNavigate extends StatelessWidget {
  const LoginNavigate({super.key});

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
            Navigator.pop(context);
          },
          child: const Center(
            child: Text.rich(
              textAlign: TextAlign.center,
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
      ),
    );
  }
}
