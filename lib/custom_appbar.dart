import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String planetName;
  final String planetTitle;
  final double appBarHeight;
  const CustomAppbar({
    super.key,
    required this.planetName,
    required this.planetTitle,
    required this.appBarHeight,
  });

  @override
  Widget build(BuildContext context) {
    bool canGoBack = Navigator.canPop(context);
    var width = MediaQuery.of(context).size.width;
    return AppBar(
      leading: canGoBack
          ? IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.arrow_back, color: Colors.white),
              ),
            )
          : null,

      centerTitle: true,
      title: Text(
        planetName,
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
      flexibleSpace: Image(
        image: AssetImage('assets/moon.png'),
        fit: BoxFit.fill,
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight * 0.2),
        child: Container(
          padding: EdgeInsets.only(left: width * 0.05),
          width: width,
          child: Text(
            textAlign: TextAlign.start,
            planetTitle,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight * 0.2);
}
