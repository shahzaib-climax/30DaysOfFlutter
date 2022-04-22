import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{

  //for light theme
  static ThemeData  lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.indigo,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme:  const AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        foregroundColor: Colors.black,
      )
  );



  //for black theme
  static ThemeData  darkTheme(BuildContext context) => ThemeData(
     brightness: Brightness.dark
  );
}