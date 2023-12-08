import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iron_swords/widgets/login_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  final emailControllerLogin = TextEditingController();
  final passwordControllerLogin = TextEditingController();

  @override
  void dispose() {
    emailControllerLogin.dispose();
    passwordControllerLogin.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 90.0, right: 30, left: 30),
        child: Column(
          children: [
            const Center(
              child: Text(
                'התחברות',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            LoginField(
              hintText: 'שם משתמש',
              controllerLogin: emailControllerLogin,
            ),
            const SizedBox(
              height: 50,
            ),
            LoginField(
                hintText: 'סיסמא', controllerLogin: passwordControllerLogin),
            const SizedBox(
              height: 50,
            ),
            ButtonLogin(
              onPressed: signIn,
            ),
            const SizedBox(
              height: 50,
            ),
            const RegisterNavigate(),
          ],
        ),
      ),
    );
  }

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailControllerLogin.text.trim(),
        password: passwordControllerLogin.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
