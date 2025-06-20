import 'package:flutter/material.dart';
import 'package:space_app/home_screen.dart';
import 'package:space_app/navigator_button.dart';

class LoginScreen extends StatelessWidget {
  static const String loginScreen = 'login_screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
            alignment: Alignment.centerLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 12, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Text(
                'Explore \nThe \nUniverse ',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              NavigatorButton(
                navigatorButton: () {
                  Navigator.of(
                    context,
                  ).pushReplacementNamed(HomeScreen.homeScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
