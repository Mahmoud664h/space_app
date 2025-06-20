import 'package:flutter/material.dart';

class NavigatorButton extends StatelessWidget {
  final String planet;
  final void Function() navigatorButton;
  const NavigatorButton({
    super.key,
    this.planet = '',
    required this.navigatorButton,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: navigatorButton,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        padding: EdgeInsets.only(left: 26, top: 16, bottom: 16, right: 22),
      ),
      child: Row(
        children: [
          Text(
            'Explore $planet',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Spacer(),
          Icon(Icons.arrow_forward, color: Colors.white, size: 25),
        ],
      ),
    );
  }
}
