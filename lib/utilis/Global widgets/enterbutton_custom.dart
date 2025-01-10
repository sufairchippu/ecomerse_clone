import 'package:flutter/material.dart';
import 'package:flutter_application_next/utilis/color_const.dart';
import 'package:flutter_application_next/view/get_started_screen/get_started_screen.dart';
import 'package:flutter_application_next/view/home%20screen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterbuttonCustom extends StatelessWidget {
  String? text1;
  BuildContext? navscrreen;
  EnterbuttonCustom({this.text1, this.navscrreen});

  @override
  Widget build(BuildContext context) {
    text1 = text1;
    navscrreen = navscrreen;
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GetStartedScreen(),
            ));
      },
      child: Container(
        height: 55,
        decoration: BoxDecoration(
            color: ColorConst.PRIMARY, borderRadius: BorderRadius.circular(3)),
        child: Center(
            child: Text(
          text1!,
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: ColorConst.WHITE5),
        )),
      ),
    );
  }
}
