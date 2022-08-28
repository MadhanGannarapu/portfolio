import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/colors.dart';

class AppThemes {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.black,
      colorScheme: const ColorScheme.dark(),
      iconTheme: IconThemeData(color: Colors.purple.shade200, opacity: 0.8),
      textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
      dividerTheme: const DividerThemeData(color: AppColors.white));

  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.white,
      colorScheme: const ColorScheme.light(),
      textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
      dividerTheme: const DividerThemeData(color: AppColors.black),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: Colors.black),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: AppColors.black,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          primary: Colors.purple,
          backgroundColor: Colors.green,
        ),
      ),
      appBarTheme: const AppBarTheme(backgroundColor: AppColors.white));
}
