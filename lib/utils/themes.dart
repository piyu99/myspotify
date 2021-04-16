import 'package:flutter/material.dart';

class Themes {
  final lightTheme=ThemeData.light().copyWith(
    scaffoldBackgroundColor: Color(0xFFEFEEEE),
      shadowColor: Colors.white.withOpacity(0.8),
      buttonColor: Colors.black.withOpacity(0.1),
    primaryColor: Colors.deepPurple
  );

  final darkTheme=ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color(0xFF292D32),
      shadowColor: Colors.white.withOpacity(0.1),
      buttonColor: Colors.black.withOpacity(0.4),
      primaryColor: Colors.yellowAccent
  );
}