import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_next/utilis/Global%20widgets/input_custom_widget.dart';
import 'package:flutter_application_next/utilis/Global%20widgets/text_field_with_shadow_widget.dart';
import 'package:flutter_application_next/utilis/color_const.dart';
import 'package:flutter_application_next/utilis/constant_image.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  final controller = PageController(viewportFraction: 1, keepPage: true);
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
        child: Column(
          children: [
            TextFieldWithShadowWidget(),
            SizedBox(
              height: 16,
            ),
            _SecondSection(),
            _thirdsection(),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 84,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 24),
                      child: Image.asset(
                          height: 60,
                          width: 75,
                          fit: BoxFit.fill,
                          ConstantImage.OFFER),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Special Offers",
                                style: GoogleFonts.montserrat(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              CircleAvatar(
                                radius: 13,
                                backgroundColor: ColorConst.WHITE5,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage(ConstantImage.EMOJI),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "We make sure you get the\n offer you need at best prices",
                            style: GoogleFonts.montserrat(
                                fontSize: 12, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 172,
                width: 343,
                color: ColorConst.GREY6,
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8, top: 24, bottom: 23),
                      child: Container(
                          //images wanted to stack here
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 35,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Flat and Heels",
                            style: GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Stand a chance to get rewarded",
                                style: GoogleFonts.montserrat(fontSize: 10),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 24,
                                width: 92,
                                decoration: BoxDecoration(
                                  color: ColorConst.PRIMARY,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Visit now ",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.arrow_right_alt,
                                      color: ColorConst.WHITE5,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  CarouselSlider _thirdsection() {
    return CarouselSlider.builder(
      itemCount: 3,
      options: CarouselOptions(
        height: 189,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        onPageChanged: (index, reason) {
          activeIndex = index;
          setState(() {});
        },
        scrollDirection: Axis.horizontal,
      ),
      itemBuilder: (context, index, realIndex) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/Rectangle 48.png"))),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 14, top: 30),
                child: Container(
                  height: 136,
                  width: 109,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "50-40% OFF",
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: ColorConst.WHITE5),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Now in (product) All colours",
                        style: GoogleFonts.montserrat(
                            fontSize: 12, color: ColorConst.WHITE5),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 32,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorConst.WHITE5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Shop Now",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: ColorConst.WHITE5),
                              ),
                              Icon(
                                Icons.arrow_right_alt,
                                color: ColorConst.WHITE5,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }

  Column _SecondSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22, right: 21),
          child: Row(
            children: [
              Text(
                "All Featured",
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
}
