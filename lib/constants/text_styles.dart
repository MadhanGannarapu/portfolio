import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static const TextStyle header =
      TextStyle(fontSize: 50, fontWeight: FontWeight.w900);
  static const TextStyle header2 =
      TextStyle(fontSize: 50, fontWeight: FontWeight.w900, color: Colors.grey);
  static const TextStyle title =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w900);
  static TextStyle caption = GoogleFonts.firaCode(textStyle: const TextStyle());
  static const TextStyle normal =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: Colors.grey);
}
