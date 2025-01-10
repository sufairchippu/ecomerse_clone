import 'package:flutter/material.dart';
import 'package:flutter_application_next/utilis/color_const.dart';
import 'package:flutter_application_next/utilis/constant_image.dart';
import 'package:flutter_application_next/utilis/Global%20widgets/connected_app_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ConnectedloginCustomWidget extends StatelessWidget {
  String? text1;
  String? text2;
  ConnectedloginCustomWidget({this.text1, this.text2});

  @override
  Widget build(BuildContext context) {
    text1 = text1;
    text2 = text2;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textAlign: TextAlign.center,
          "- OR Continue with -",
          style: GoogleFonts.montserrat(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: ColorConst.BLACK2),
        ),
        Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ConnectedAppWidget(
                image: ConstantImage.Kmyapplogo,
              ),
              ConnectedAppWidget(
                image: ConstantImage.Onboadimage2,
              ),
              ConnectedAppWidget(
                image: ConstantImage.Onboadimage3,
              )
            ],
          ),
        ),
        Row(
          children: [
            Text(textAlign: TextAlign.center, text1!),
            Text(textAlign: TextAlign.center, text2!)
          ],
        )
      ],
    );
  }
}
