import 'package:flutter/material.dart';
import 'package:space_app/home_screen.dart';
import 'package:space_app/login_screen.dart';
import 'package:space_app/planet_detail.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.loginScreen,
      routes: {
        LoginScreen.loginScreen: (context) => const LoginScreen(),
        HomeScreen.homeScreen: (context) => HomeScreen(),
        PlanetDetail.planetDetail: (context) => PlanetDetail(),
      },
    );
  }
}
