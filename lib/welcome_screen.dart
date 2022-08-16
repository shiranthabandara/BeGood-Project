import 'package:begood/ListVehicle.dart';
import 'package:begood/vehicle_registration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class welcomePage extends StatefulWidget {
  @override
  _welcomePageState createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("lib/assets/images/background.png"),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          SizedBox(height: h * 0.75),
          GestureDetector(
            onTap: () {
              Get.to(() => vehiReg());
            },
            child: Container(
              height: h * 0.06,
              width: w * 0.8,
              decoration: const BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage("lib/assets/images/vehi_register.png"),
                ),
              ),
            ),
          ),
          SizedBox(height: h * 0.04),
          GestureDetector(
            onTap: () {
              Get.to(() => ListVehicle());
            },
            child: Container(
              height: h * 0.06,
              width: w * 0.8,
              decoration: const BoxDecoration(
                //color: Colors.red,
                image: DecorationImage(
                  image: AssetImage("lib/assets/images/View_details.png"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
