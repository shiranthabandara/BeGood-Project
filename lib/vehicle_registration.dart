import 'dart:convert';

import 'package:begood/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'Model/vehicleModel.dart';

class vehiReg extends StatefulWidget {
  const vehiReg({Key? key}) : super(key: key);

  @override
  _vehiRegState createState() => _vehiRegState();
}

class _vehiRegState extends State<vehiReg> {
  TextEditingController vehicleNumber = TextEditingController();
  TextEditingController vehicleType = TextEditingController();
  TextEditingController vehicleModel = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: EdgeInsets.only(left: 18, right: 18, top: 50),
            width: w,
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Register you'r vehicle",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: h * 0.05),
                Text(
                  "Vehicle Number",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black54,
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: h * 0.01),
                TextFormField(
                  controller: vehicleNumber,
                  validator: (value) {
                    if (value == "") {
                      return "vehicle number is required";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.car_rental_outlined),
                    contentPadding: const EdgeInsets.all(10),
                    focusColor: Colors.grey,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                            color: Colors.red,
                            width: 1,
                            style: BorderStyle.solid)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(height: h * 0.04),
                Text(
                  "Vehicle Type",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black54,
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: h * 0.01),
                TextFormField(
                  controller: vehicleType,
                  validator: (value) {
                    if (value == "") {
                      return "vehicle type is required";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.car_repair_outlined),
                    contentPadding: const EdgeInsets.all(10),
                    focusColor: Colors.black12,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                            color: Colors.red,
                            width: 1,
                            style: BorderStyle.solid)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(height: h * 0.04),
                Text(
                  "Vehicle Model",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black54,
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: h * 0.01),
                TextFormField(
                  controller: vehicleModel,
                  validator: (value) {
                    if (value == "") {
                      return "vehicle model is required";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.model_training),
                    contentPadding: const EdgeInsets.all(10),
                    focusColor: Colors.black12,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                            color: Colors.red,
                            width: 1,
                            style: BorderStyle.solid)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(height: h * 0.06),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: Container(
                    height: h * 0.07,
                    width: w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.blueAccent,
                    ),
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: h * 0.02),
                Container(
                  height: h * 0.07,
                  width: w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.blueAccent,
                  ),
                  child: Center(
                    child: Text(
                      "View Register details",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: h * 0.02),
                GestureDetector(
                  onTap: () {
                    Get.to(() => welcomePage());
                  },
                  child: Container(
                    height: h * 0.07,
                    width: w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            /* Container(
            //margin: EdgeInsets.only(left: 15, top: 60),
            child: Text(
              "Register you'r vehicle",
              style: TextStyle(fontFamily: 'Poppins', fontSize: 28),
            ),
          ),
          SizedBox(height: h * 0.03),
          Container(
            height: h * 0.05,
            width: w * 0.5,
            color: Colors.red,
          ),*/
          ),
        ),
      ),
    );
  }
}
