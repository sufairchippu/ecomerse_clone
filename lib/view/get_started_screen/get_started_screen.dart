import 'package:flutter/material.dart';
import 'package:flutter_application_next/utilis/color_const.dart';
import 'package:flutter_application_next/utilis/constant_image.dart';
import 'package:flutter_application_next/view/Bottom%20Navigation%20Bar/bottom_navigation_bar.dart';
import 'package:flutter_application_next/view/get_started_screen/global_widgets/custom_button.dart';
import 'package:flutter_application_next/view/home%20screen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ConstantImage.GETSTARTEDBG))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 70, bottom: 34, left: 37, right: 37),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    ColorConst.BLACK.withOpacity(0),
                    ColorConst.BLACK.withOpacity(.6),
                    ColorConst.BLACK.withOpacity(.7),
                    ColorConst.BLACK.withOpacity(1),
                  ])),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "You want Authentic, here you go!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        color: ColorConst.WHITE6,
                        fontSize: 34,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 14),
                  Text(
                    "You want Authentic, here you go!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: ColorConst.WHITE6,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 44),
                  CustomButton(
                    buttonText: "Get Started",
                    onButtonPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavigationScreen(),
                          ));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
