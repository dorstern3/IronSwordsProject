import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iron_swords/pages/phone.dart';
import 'package:iron_swords/theme/palette.dart';
import 'package:local_auth/local_auth.dart';

class FingerPrintLogin extends StatefulWidget {
  const FingerPrintLogin({super.key});

  @override
  State<FingerPrintLogin> createState() => _FingerPrintLoginState();
}

class _FingerPrintLoginState extends State<FingerPrintLogin> {
  late final LocalAuthentication auth;
  // ignore: unused_field
  bool _supportState = false;

  @override
  void initState() {
    super.initState();
    auth = LocalAuthentication();
    auth.isDeviceSupported().then((bool isSupported) => setState(
          () {
            _supportState = isSupported;
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        backgroundColor: Pallete.whiteColor,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        side: const BorderSide(
          color: Colors.black,
          width: 3,
        ),
      ),
      onPressed: _authenticate,
      icon: const Icon(
        Icons.fingerprint_sharp,
        color: Colors.green,
      ),
      label: const Text(
        'כניסה באמצעות טביעת אצבע',
        style: TextStyle(
          color: Pallete.blackColor,
          fontSize: 20,
        ),
      ),
    );
  }

// To Insert New FingerPrint

  // // ignore: unused_element
  // Future<void> _getAvailableBiometrics() async {
  //   List<BiometricType> availableBiometrics =
  //       await auth.getAvailableBiometrics();
  //   // ignore: avoid_print
  //   print("List of availableBiometrics : $availableBiometrics");

  //   if (!mounted) {
  //     return;
  //   }
  // }

  Future<void> _authenticate() async {
    try {
      bool authenticated = await auth.authenticate(
          localizedReason:
              'Subscribe or you will never find any stack overflow answer');
      //options:
      const AuthenticationOptions(
        stickyAuth: true,
        biometricOnly: true,
      );
      // ignore: avoid_print
      print('Authenticated: $authenticated');
      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const PhonePage(),
        ),
      );
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
