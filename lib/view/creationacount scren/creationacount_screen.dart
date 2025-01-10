import 'package:flutter/material.dart';
import 'package:flutter_application_next/utilis/Global%20widgets/connectedlogin_custom_widget.dart';
import 'package:flutter_application_next/utilis/Global%20widgets/input_custom_widget.dart';

class CreationacountScreen extends StatelessWidget {
  const CreationacountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InputCustomWidget(
            hintText: "Username or e-mail",
            prefixicon: Icons.person,
          ),
          InputCustomWidget(
              hintText: "Username or e-mail", prefixicon: Icons.person),
          InputCustomWidget(
              hintText: "Username or e-mail", prefixicon: Icons.person),
          ConnectedloginCustomWidget(
            text1: "Create An Account",
            text2: "Sign-up",
          )
        ],
      ),
    );
  }
}
