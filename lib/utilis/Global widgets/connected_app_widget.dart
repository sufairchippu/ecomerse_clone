import 'package:flutter/material.dart';
import 'package:flutter_application_next/utilis/color_const.dart';

class ConnectedAppWidget extends StatelessWidget {
  String? image;
  ConnectedAppWidget({this.image});

  @override
  Widget build(BuildContext context) {
    image = image;
    return CircleAvatar(
      radius: 22,
      backgroundColor: ColorConst.PRIMARY,
      child: CircleAvatar(
        radius: 19,
        backgroundColor: ColorConst.PRIMARY3,
        child: Image.asset(
          image!,
          scale: 8,
        ),
      ),
    );
  }
}
