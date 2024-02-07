import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromRGBO(0,128,128,255),
    onPrimary: Color(0xfffff4e3),
    secondary: Colors.white,
    onSecondary: Color(0xffdbdbdb),
  ),
  fontFamily: GoogleFonts.poppins().fontFamily,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontSize: 20,
      color: Colors.black
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 15,
    ),
    displayLarge: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromRGBO(0,128,128,255),
      onPrimary: Color(0xfffff4e3),
      secondary: Colors.black54,
      onSecondary: Colors.grey[600],
  ),
  fontFamily: GoogleFonts.poppins().fontFamily,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
        fontSize: 20,
        color: Colors.white
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: 15,
    ),
  ),
);