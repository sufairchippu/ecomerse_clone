import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_next/utilis/color_const.dart';
import 'package:google_fonts/google_fonts.dart';

class InputCustomWidget extends StatelessWidget {
  String? hintText;
  IconData? prefixicon;
  IconData? suffixicon;
  InputCustomWidget({this.hintText, this.prefixicon, this.suffixicon});

  @override
  Widget build(BuildContext context) {
    prefixicon = prefixicon;
    hintText = hintText;
    return TextField(
      decoration: InputDecoration(
          hintText: hintText!,
          hintStyle: GoogleFonts.montserrat(color: ColorConst.GREY4),
          filled: true,
          fillColor: ColorConst.GREY1,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorConst.GREY4)),
          prefixIcon: Icon(prefixicon),
          suffixIcon: Icon(suffixicon)),
    );
  }
}
