import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_flutter/pages/cart_page.dart';
import 'package:test_flutter/pages/home_page.dart';
import 'package:test_flutter/pages/login_page.dart';
import 'package:test_flutter/utils/routes.dart';
import 'package:test_flutter/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      //for light theme
      theme: MyTheme.lightTheme(context),
      //for dark theme
      darkTheme: ThemeData(brightness: Brightness.dark),

      // for navigation
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.cartRoute: (context) => const CartPage(),
      },
    );
  }
}
