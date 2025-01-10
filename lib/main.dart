import 'package:flutter/material.dart';
import 'package:flutter_application_next/utilis/color_const.dart';
import 'package:flutter_application_next/view/splash%20screen/splash_screen.dart';

class Myshp extends StatelessWidget {
  const Myshp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // theme: ThemeData(scaffoldBackgroundColor: ColorConst.PRIMARY3),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

void main() {
  runApp(Myshp());
}
