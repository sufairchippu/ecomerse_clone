// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:flutter_application_next/utilis/color_const.dart';
// import 'package:flutter_application_next/utilis/constant_image.dart';
// import 'package:flutter_application_next/view/login%20screen/login_screen.dart';
// import 'package:google_fonts/google_fonts.dart';

// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({super.key});

//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   int currentvalue = 0;

//   List pagess = [
//     Container(
//       padding: EdgeInsets.all(17),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     child: Row(
//                       children: [
//                         Text(
//                           "1",
//                           style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w600,
//                               color: ColorConst.BLACK),
//                         ),
//                         Text(
//                           "/3",
//                           style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w600,
//                               color: ColorConst.GREY2),
//                         )
//                       ],
//                     ),
//                   ),

//                   Text(
//                     "Skip",
//                     style: GoogleFonts.montserrat(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                         color: ColorConst.BLACK),
//                   ),

//                   // actions: [
//                   //   TextButton(
//                   //       onPressed: () {},
//                   //       child: Text(
//                   //         "Skip",
//                   //         style: TextStyle(
//                   //             fontSize: 18,
//                   //             fontWeight: FontWeight.w600,
//                   //             color: Color(0xff000000)),
//                   //       ))
//                   // ],
//                 ],
//               ),
//               Center(
//                 child: Container(
//                   height: 300,
//                   width: 300,
//                   child: Image.asset(ConstantImage.Onboadimage1,
//                       fit: BoxFit.contain),
//                 ),
//               ),
//               Text(
//                 "Choose Product",
//                 style: GoogleFonts.montserrat(
//                     fontSize: 24,
//                     fontWeight: FontWeight.w900,
//                     color: ColorConst.BLACK),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                   maxLines: 3,
//                   textAlign: TextAlign.center,
//                   "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
//                   style: GoogleFonts.montserrat(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w900,
//                       color: ColorConst.GREY1))
//             ],
//           ),
//           Row(
//             children: [
//               Text(""),
//               InkWell(
//                   onTap: () {
//                     Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => LoginScreen(),
//                         ));
//                   },
//                   child: Text(
//                     "next",
//                   ))
//             ],
//           )
//         ],
//       ),
//     ),
//     Container(
//       child: Column(
//         children: [
//           Center(
//             child: Container(
//               height: 300,
//               width: 300,
//               child:
//                   Image.asset(ConstantImage.Onboadimage2, fit: BoxFit.contain),
//             ),
//           ),
//           Text("Make payment",
//               style: GoogleFonts.montserrat(
//                   fontSize: 24,
//                   fontWeight: FontWeight.w900,
//                   color: ColorConst.BLACK)),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//               maxLines: 3,
//               textAlign: TextAlign.center,
//               "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
//               style: GoogleFonts.montserrat(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w900,
//                   color: ColorConst.GREY1))
//         ],
//       ),
//     ),
//     Container(
//       child: Column(
//         children: [
//           Center(
//             child: Container(
//               height: 300,
//               width: 300,
//               child: Image.asset("assets\/images/Sales consulting-pana 1.png",
//                   fit: BoxFit.contain),
//             ),
//           ),
//           Text("Get your order",
//               style: GoogleFonts.montserrat(
//                   fontSize: 24,
//                   fontWeight: FontWeight.w900,
//                   color: ColorConst.BLACK)),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             maxLines: 3,
//             textAlign: TextAlign.center,
//             "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
//             style: GoogleFonts.montserrat(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w900,
//                 color: ColorConst.GREY1),
//           )
//         ],
//       ),
//     )
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: PageView.builder(
//       itemCount: pagess.length,
//       itemBuilder: (context, index) {
//         return pagess[index];
//       },
//     ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_next/utilis/color_const.dart';
import 'package:flutter_application_next/utilis/constant_image.dart';
import 'package:flutter_application_next/view/login%20screen/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text(
                '1',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    color: ColorConst.BLACK,
                    fontSize: 18),
              ),
            ),
            Text(
              '/3',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  color: ColorConst.GREY2,
                  fontSize: 18),
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            },
            child: Text(
              'skip',
              style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: ColorConst.BLACK),
            ),
          ),
          SizedBox(
            width: 9,
          )
        ],
      ),
      body: PageView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ConstantImage.Onboadimage1,
                  height: 300,
                  width: 300,
                ),
                SizedBox(height: 16),
                Text(
                  'choose product',
                  style: GoogleFonts.montserrat(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: ColorConst.BLACK),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Lorem Ipsum has been the industry'
                    's standard dummy text '
                    'ever since the 1500s, when an unknown printer took a galley. '
                    'It has survived not only five centuries.',
                    style: GoogleFonts.montserrat(
                        fontSize: 14, color: ColorConst.GREY1),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Text(
              'previous',
              style: GoogleFonts.montserrat(
                color: ColorConst.GREY3,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text('next',
                style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: ColorConst.PRIMARY,
                    fontWeight: FontWeight.w600)),
          )
        ],
      ),
    );
  }
}
