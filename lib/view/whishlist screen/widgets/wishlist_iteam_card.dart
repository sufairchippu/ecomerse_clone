import 'package:flutter/material.dart';
import 'package:flutter_application_next/utilis/color_const.dart';
import 'package:google_fonts/google_fonts.dart';

class WishlistIteamCard extends StatelessWidget {
  final backcgroundcolor;
  IconData iconn;
  String image;
  String title;
  String subtext;
  final concolor;

  WishlistIteamCard(
      {super.key,
      required this.backcgroundcolor,
      required this.image,
      required this.iconn,
      required this.title,
      required this.subtext,
      required this.concolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      decoration: BoxDecoration(
          color: backcgroundcolor, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 8),
                child: Text(
                  title,
                  style: GoogleFonts.montserrat(color: ColorConst.BLACK),
                ),
              ),
              Row(
                children: [
                  Icon(
                    iconn,
                    color: ColorConst.BLACK,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      subtext,
                      style: GoogleFonts.montserrat(color: ColorConst.BLACK),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: concolor,
                  border: Border.all(width: 1, color: ColorConst.BLACK),
                  borderRadius: BorderRadius.circular(4)),
              child: Row(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 6),
                      child: Text(
                        'View all',
                        style: GoogleFonts.montserrat(color: ColorConst.BLACK),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: ColorConst.BLACK,
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
