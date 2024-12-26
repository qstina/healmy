import 'package:flutter/material.dart';

class TColor {
  static Color get primaryColor1 => const Color(0xFF66CCCC); //#66cccc
  static Color get primaryColor2 => const Color(0xFFF0FEF9); // #f0fef9

  static Color get secondaryColor1 => const Color(0xFFFBEAE9); // #fbeae9
  static Color get secondaryColor2 => const Color(0xFFF0B5B5); // #f0b5b5
  static Color get secondaryColor3 => const Color(0xFF8DB2C6); // #8db2c6

  static List<Color> get primaryG => [ primaryColor2, primaryColor1 ];
  static List<Color> get secondaryG => [ secondaryColor1, secondaryColor2, secondaryColor3];

  static Color get black => const Color (0xff1D1617);
  static Color get gray => const Color (0xff786F72);
  static Color get white => Colors.white;
  static Color get lightGray => const Color(0xffF7F8F8);
}

