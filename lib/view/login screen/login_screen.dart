import 'package:flutter/material.dart';
import 'package:flutter_application_next/utilis/color_const.dart';
import 'package:flutter_application_next/utilis/Global%20widgets/enterbutton_custom.dart';
import 'package:flutter_application_next/utilis/Global%20widgets/input_custom_widget.dart';
import 'package:flutter_application_next/view/creationacount%20scren/creationacount_screen.dart';
import 'package:flutter_application_next/view/get_started_screen/get_started_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 19, right: 26, left: 32, bottom: 147),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "welcome back! ",
              style: GoogleFonts.montserrat(
                  fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 36,
            ),
            InputCustomWidget(
              hintText: "Username or E-mail",
              prefixicon: Icons.person,
            ),
            SizedBox(
              height: 23,
            ),
            InputCustomWidget(
              hintText: "Password",
              prefixicon: Icons.lock_outline,
              suffixicon: Icons.remove_red_eye_rounded,
            ),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 15,
                  width: 108,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: Text(
                      "Forgot password ?",
                      style: GoogleFonts.montserrat(
                          color: ColorConst.PRIMARY,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 52,
            ),
            EnterbuttonCustom(
              text1: "Login",
            )
          ],
        ),
      ),

      //   Row(
      //     children: [
      //       TextField(
      //         decoration: InputDecoration(
      //             hintText: " username or e-mail",
      //             border: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(10),
      //                 borderSide: BorderSide(color: ColorConst.BLACK)),
      //             prefixIcon:
      //                 IconButton(onPressed: () {}, icon: Icon(Icons.person))),
      //       )
      //     ],
      //   )
      // ],
    );
  }
}




// Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.only(top: 19, right: 26, left: 32),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Welcome',
//               style: GoogleFonts.montserrat(
//                   fontSize: 36, fontWeight: FontWeight.bold),
//             ),
//             Text('Back!',
//                 style: GoogleFonts.montserrat(
//                     fontSize: 36, fontWeight: FontWeight.bold)),
//             SizedBox(
//               height: 36,
//             ),
//             Row(
//               children: [
//                 Expanded(
//                     child: TextField(
//                   decoration: InputDecoration(
//                       hintText: 'Username OR Email',
//                       border: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.black),
//                           borderRadius: BorderRadius.circular(10)),
//                       prefixIcon: IconButton(
//                           onPressed: () {}, icon: Icon(Icons.person))),
//                 ))
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 InkWell(
//                   onTap: () {},
//                   child: Container(
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(4),
//                         color: ColorConstant.Mycolors),
//                     height: 55,
//                     width: 317,
//                     child: Center(
//                       child: Text(
//                         'Login',
//                         style: GoogleFonts.montserrat(
//                             fontSize: 20,
//                             fontWeight: FontWeight.w600,
//                             color: ColorConstant.LBUTTON),
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             Center(
//                 child: Text(
//               '- OR Continue with -',
//               style: GoogleFonts.montserrat(
//                   fontSize: 12,
//                   fontWeight: FontWeight.w500,
//                   color: ColorConstant.SampleText),
//             )),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CircleAvatar(
//                   radius: 43,
//                   backgroundColor: Colors.white,
//                   child: Image.asset(Utiles.NOTIFICONS),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 28,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Create An Account',
//                   style: GoogleFonts.montserrat(
//                       fontSize: 12,
//                       fontWeight: FontWeight.w500,
//                       color: ColorConstant.SampleText),
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 Text(
//                   'Sign Up',
//                   style: GoogleFonts.montserrat(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                       color: ColorConstant.Mycolors),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );