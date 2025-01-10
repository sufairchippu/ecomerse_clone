import 'package:flutter/material.dart';
import 'package:flutter_application_next/utilis/color_const.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldWithShadowWidget extends StatelessWidget {
  const TextFieldWithShadowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 9,
            color: Colors.black.withOpacity(.1))
      ]),
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              hintText: "search my product",
              hintStyle: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ColorConst.GREY6),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic_none_rounded)),
        ),
      ),
    );
  }
}
