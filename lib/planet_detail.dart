import 'package:flutter/material.dart';
import 'package:space_app/custom_appbar.dart';
import 'package:space_app/planet_list.dart';

class PlanetDetail extends StatelessWidget {
  static const String planetDetail = 'plane_detail';
  const PlanetDetail({super.key});

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)?.settings.arguments as int;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppbar(
        planetName: planetList[index].planetName,
        planetTitle: planetList[index].planetTitle,
        appBarHeight: height,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.02,
            vertical: height * 0.01,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                planetList[index].planetImgeUrl,
                height: height * 0.55,
              ),
              Text(
                'About',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: height * 0.009),
              Text(
                planetList[index].planetAbout,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: height * 0.02),
              Text(
                'Distance from Sun (km) : ${planetList[index].distanceFromSun}',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: height * 0.005),
              Text(
                'Length of Day (hours) : ${planetList[index].lengthOfDay}',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: height * 0.005),
              Text(
                'Orbital Period (Earth years) : ${planetList[index].orbitalPeriod}',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: height * 0.005),
              Text(
                'Radius (km) : ${planetList[index].radius}',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: height * 0.005),
              Text(
                'Mass (kg) : ${planetList[index].mass}',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: height * 0.005),
              Text(
                'Gravity (m/s²) : ${planetList[index].gravity}',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),

              Text(
                'Surface Area (km²) : ${planetList[index].surfaceArea}',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: height * 0.005),
            ],
          ),
        ),
      ),
    );
  }
}
