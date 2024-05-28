import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
    textTheme: GoogleFonts.poppinsTextTheme(),
    inputDecorationTheme: InputDecorationTheme().copyWith(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      fillColor: Colors.grey[200],
      filled: true,
    ),
  );
}
