import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mycart/Constant/Colorconstants.dart';
import 'package:mycart/screens/Demo.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MYApp());
}

class MYApp extends StatelessWidget {
  const MYApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colorconstants.white,
        appBarTheme: AppBarTheme(
          color: Colorconstants.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colorconstants.black,
          ),
        ),
      ),
      home: Demo(),
    );
  }
}
