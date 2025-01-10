import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeIcon extends StatelessWidget {
  Color? circlecolor;
  Color? cotainercolor;
  String text;
  IconData? icon;
  CustomeIcon({
    required this.circlecolor,
    required this.cotainercolor,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 136,
        ),
        Positioned(
          child: Container(
            decoration: BoxDecoration(
              color: cotainercolor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(9),
                topRight: Radius.circular(9),
              ),
            ),
            height: 36,
            width: 136,
          ),
        ),
        Positioned(
          left: 40,
          child: Text(
            textAlign: TextAlign.end,
            text,
            style: GoogleFonts.montserrat(fontSize: 16, color: Colors.white),
          ),
        ),
        Positioned(
          right: 96,
          child: CircleAvatar(
            backgroundColor: circlecolor,
            child: Icon(Icons.shopping_cart_outlined),
            radius: 20,
          ),
        ),
      ],
    );
  }
}
