import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
                      child: Image(
                    image: AssetImage(
                      "assets/images/Group 34010.png",
                    ),
                    fit: BoxFit.fill,
                  )),
                  Container(
                    child: Image(
                      image: AssetImage("assets/images/Stylish.png"),
                      fit: BoxFit.fill,
                    ),
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
