import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iron_swords/pages/phone.dart';
import 'package:iron_swords/widgets/register_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailControllerRegister = TextEditingController();
  final passwordControllerRegister = TextEditingController();

  @override
  void dispose() {
    emailControllerRegister.dispose();
    passwordControllerRegister.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 90.0, right: 30, left: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Text(
                  'הרשמה',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              RegistrField(
                hintText: 'שם משתמש',
                controllerRegister: emailControllerRegister,
              ),
              const SizedBox(
                height: 50,
              ),
              RegistrField(
                hintText: 'סיסמא',
                controllerRegister: passwordControllerRegister,
              ),
              const SizedBox(
                height: 50,
              ),
              ButtonRegister(
                onPressed: signUp,
              ),
              const SizedBox(
                height: 50,
              ),
              const LoginNavigate(),
            ],
          ),
        ),
      ),
    );
  }

  Future signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailControllerRegister.text.trim(),
        password: passwordControllerRegister.text.trim(),
      );

      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const PhonePage(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
