import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_next/utilis/color_const.dart';
import 'package:flutter_application_next/utilis/constant_image.dart';
import 'package:flutter_application_next/view/onboarding%20screen/onboarding_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => OnboardingScreen(),
            ));
      },
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Image.asset(
                    ConstantImage.Kmyapplogo,
                    fit: BoxFit.fill,
                    height: 100,
                    width: 124.99,
                  )),
                  SizedBox(
                    width: 9,
                  ),
                  Text("Stylish",
                      style: GoogleFonts.libreCaslonText(
                          color: ColorConst.PRIMARY,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)
                      //TextStyle(
                      // color: ColorConst.PRIMARY,
                      // fontSize: 40,
                      // fontWeight: FontWeight.bold
                      // ),
                      )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
