import 'package:flutter/material.dart';
import 'package:space_app/custom_appbar.dart';
import 'package:space_app/navigator_button.dart';
import 'package:space_app/planet_detail.dart';
import 'package:space_app/planet_list.dart';

class HomeScreen extends StatefulWidget {
  static const String homeScreen = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int index = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppbar(
        planetName: 'Explore',
        planetTitle: 'Which planet\nwould you like to explore?',
        appBarHeight: height,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  Expanded(child: Image.asset(planetList[index].planetImgeUrl)),
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            if (index <= 0) {
                              return;
                            }
                            setState(() {
                              index--;
                            });
                          },
                          icon: CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Icon(Icons.arrow_back, color: Colors.white),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            if (index >= 8) {
                              return;
                            }
                            setState(() {
                              index++;
                            });
                          },
                          icon: CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: NavigatorButton(
              navigatorButton: () {
                Navigator.of(
                  context,
                ).pushNamed(PlanetDetail.planetDetail, arguments: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
