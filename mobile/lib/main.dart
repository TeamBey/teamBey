import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teambey_org/pages/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(0,128,128,255)),
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: MySignInPage(),
    );
  }
}





