import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:iron_swords/theme/palette.dart';
import 'package:iron_swords/widgets/select.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Iron Swords',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Pallete.greyColor,
      ),
      home: const Select(),
    );
  }
}
