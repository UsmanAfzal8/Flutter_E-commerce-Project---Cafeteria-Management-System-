import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.roboto().fontFamily,
      cardColor: creamcolor,
      canvasColor: Colors.white,
      buttonColor: Colors.black87,
      accentColor: Colors.black,
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        textTheme: Theme.of(context).textTheme,
      ));
  static ThemeData Darktheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.roboto().fontFamily,
      cardColor: gray,
      buttonColor: darkblue,
      canvasColor: Colors.black,
      accentColor: Colors.white,
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        textTheme: Theme.of(context).textTheme,
      ));
  static Color creamycolor = Color(0xfffEDE5CC);
  static Color creamcolor = Color(0xfff5f5f5);
  static Color bluecolor = Color(0xfff6b9aba);
  static Color black = Color(0xfff1b1b1b);
  static Color gray = Color(0xfff3D3D3D);
  static Color darkblue = Color(0xfff23395d);
}
