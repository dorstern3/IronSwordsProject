import 'package:flutter/material.dart';
import 'package:iron_swords/widgets/phone_field.dart';

class PhonePage extends StatefulWidget {
  const PhonePage({super.key});

  @override
  State<PhonePage> createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 90.0, right: 30, left: 30),
        child: Column(
          children: [
            Column(
              children: [
                Center(
                  child: Text(
                    'הכנס מספר טלפון',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'לשליחה',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                PhoneField(),
                SizedBox(
                  height: 50,
                ),
                ButtonPhoto(),
                SizedBox(
                  height: 50,
                ),
                SignOut(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
