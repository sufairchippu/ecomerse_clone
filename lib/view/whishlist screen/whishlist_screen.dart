import 'package:flutter/material.dart';
import 'package:flutter_application_next/controller/Dummy%20Db/dummy_db.dart';
import 'package:flutter_application_next/utilis/Global%20widgets/input_custom_widget.dart';
import 'package:flutter_application_next/utilis/Global%20widgets/text_field_with_shadow_widget.dart';
import 'package:flutter_application_next/utilis/color_const.dart';
import 'package:flutter_application_next/utilis/constant_image.dart';
import 'package:flutter_application_next/view/login%20screen/login_screen.dart';
import 'package:flutter_application_next/view/whishlist%20screen/widgets/wishlist_iteam_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class WhishlistScreen extends StatelessWidget {
  const WhishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              ConstantImage.Kmyapplogo,
              height: 32,
              width: 39,
              fit: BoxFit.fill,
            ),
            SizedBox(
              width: 9,
            ),
            Text(
              "Stylish",
              style: GoogleFonts.libreCaslonText(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: ColorConst.BLUE),
            )
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.png"),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        TextFieldWithShadowWidget(),
        SizedBox(
          height: 16,
        ),
        _SecondSection(),
        MasonryGridView.builder(
            itemCount: 100,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) => WishlistIteamCard(
                backcgroundcolor: ColorConst.BLACK,
                image: ConstantImage.OFFER,
                iconn: Icons.ac_unit_rounded,
                title: "hi",
                subtext: "he",
                concolor: ColorConst.PRIMARY))
        // MasonryGridView.builder(gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder:(context, index) {

        // },)
      ])),
    );
  }
}

Column _SecondSection() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 22, right: 21),
        child: Row(
          children: [
            Text(
              "52,082+ oiteams",
              style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: ColorConst.BLACK),
            ),
            Spacer(),
            Container(
              height: 24,
              width: 61,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConst.WHITE5),
              child: Center(
                child: Row(
                  children: [
                    Text(
                      "Sort",
                      style: GoogleFonts.montserrat(
                          fontSize: 12, color: ColorConst.BLACK),
                    ),
                    Icon(
                      Icons.swap_vert,
                      color: ColorConst.BLACK2,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              height: 24,
              width: 61,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConst.WHITE5),
              child: Center(
                child: Row(
                  children: [
                    Text(
                      "Filter",
                      style: GoogleFonts.montserrat(
                          fontSize: 12, color: ColorConst.BLACK),
                    ),
                    Icon(
                      Icons.filter_alt_outlined,
                      color: ColorConst.BLACK2,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ],
  );
}
