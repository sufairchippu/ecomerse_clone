import 'package:flutter/material.dart';
import 'package:flutter_application_next/utilis/color_const.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeTextfieldWithTitle extends StatelessWidget {
  const CustomeTextfieldWithTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "title",
          style: GoogleFonts.montserrat(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: ColorConst.BLACK),
        ),SizedBox(height: 15,),TextFormField()
      ],
    );
  }
}
