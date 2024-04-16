import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum TemaEnum {
  principal,
  secundario,
  erro
}

class Tema {
  ThemeData tema = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 35, 118, 186),
      primary: const Color.fromARGB(255, 35, 118, 186),
      onPrimary: Colors.white,
      primaryContainer: const Color.fromARGB(255, 35, 118, 186),
      secondary: const Color.fromARGB(255, 5, 41, 71),
      onSecondary: Colors.white,
      secondaryContainer: const Color.fromARGB(255, 5, 41, 71),
      error: const Color.fromARGB(255, 222, 58, 58),
      onError: Colors.white,
      errorContainer: const Color.fromARGB(255, 222, 58, 58),
      brightness: Brightness.light
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 32,
        fontWeight: FontWeight.w600
      ),
      displayMedium: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w400
      ),
      displaySmall: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w200
      ),
      headlineLarge: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 42,
        fontWeight: FontWeight.w700
      ),
      headlineMedium: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.w700
      ),
      headlineSmall: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w700
      ),
      titleLarge: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 42,
        fontWeight: FontWeight.w700
      ),
      titleMedium: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.w700
      ),
      titleSmall: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 27,
        fontWeight: FontWeight.w700
      ),
      bodyLarge: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 29,
        fontWeight: FontWeight.w700
      ),
      bodyMedium: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w500
      ),
      bodySmall: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 17,
        fontWeight: FontWeight.w400
      ),
      labelLarge: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400
      ),
      labelMedium: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w400
      ),
      labelSmall: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w400
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(width: 0),
      ),
      filled: true,
      fillColor: Colors.white,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(width: 0),
      ),
    ),
    fontFamily: 'Poppins'
  );
}