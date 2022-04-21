import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_flutter/pages/home_page.dart';
import 'package:test_flutter/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark
      ),
      initialRoute: "/login",
      routes: {
        "/": (context) => const LoginPage(),
        "/home" : (context) => const HomePage(),
        "/login" : (context) => const LoginPage()
      },
    );
  }
}
