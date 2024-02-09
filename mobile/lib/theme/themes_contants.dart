import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: Colors.white,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xff008080),
    onPrimary: Color(0xff009688),
    secondary: Color(0xffFFE082),
    onSecondary: Color(0xfffff8E1),
    onBackground: Color(0xffE0E0E0),
    background: Color(0xffE0F2F1),
  ),
  fontFamily: GoogleFonts.poppins().fontFamily,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontSize: 20,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 15,
      color: Colors.black,
    ),
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
      labelLarge: TextStyle(
        fontSize: 15,
        color: Color(0xff008080),
      )
  ),
);

ThemeData darkTheme = ThemeData(
  primaryColor: Colors.black,
  colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xff008080),
      onPrimary: Color(0xff009688),
    secondary: Color(0xffFFE082),
    onSecondary: Color(0xfffff8E1),
      onBackground: Color(0xff757575),
      background: Color(0xff424242),
  ),
  fontFamily: GoogleFonts.poppins().fontFamily,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyLarge: TextStyle(
        fontSize: 20,
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontSize: 15,
      color: Colors.white,
    ),
    labelLarge: TextStyle(
      fontSize: 15,
      color: Color(0xff008080),
    )
  ),
);