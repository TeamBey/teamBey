import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teambey_org/pages/sign_in_page.dart';
import 'package:teambey_org/theme/themes_contants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: MySignInPage(),
    );
  }
}





