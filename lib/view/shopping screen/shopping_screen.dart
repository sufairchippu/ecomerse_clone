import 'package:flutter/material.dart';
import 'package:flutter_application_next/utilis/color_const.dart';
import 'package:flutter_application_next/view/shopping%20screen/custome_icon.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  int clicked = 1;
  final pageControllers = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
          actions: [CircleAvatar(child: Icon(Icons.shopping_cart_outlined))],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildImagewithScreen(),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Nike Sneakers",
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: ColorConst.BLACK),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        "Vision Alta Men’s Shoes Size (All Colours)",
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: ColorConst.BLACK),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    children: [
                      RatingBar.builder(
                        itemSize: 25,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Text("56980")
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "2999",
                        style: TextStyle(
                            color: ColorConst.GREY5,
                            decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("1500", style: TextStyle(color: ColorConst.BLACK)),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "50% Off",
                        style: TextStyle(color: ColorConst.PRIMARY),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Product Details",
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: ColorConst.BLACK),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        """Perhaps the most iconic sneaker of all-time, this original
"Chicago"? colorway is the cornerstone to any sneaker
collection. Made famous in 1985 by Michael Jordan, the 
shoe has stood the test of time, becoming the most 
famous colorway of the Air Jordan 1. This 2015 release saw
the ...More""",
                        style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: ColorConst.BLACK2),
                      ),
                    ],
                  ),
                  Row(
                    children: [],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      CustomeIcon(
                        circlecolor: ColorConst.BLACK,
                        cotainercolor: ColorConst.PRIMARY2,
                        icon: Icons.shopping_cart_outlined,
                        text: "Go to Cart",
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }

  Column _buildImagewithScreen() {
    return Column(
      children: [
        SizedBox(
          height: 235,
          child: Stack(
            children: [
              PageView.builder(
                itemCount: 10,
                // physics: NeverScrollableScrollPhysics(),
                controller: pageControllers,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/unsplash_NoVnXXmDNi0.png',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Positioned(
                  top: 0,
                  right: 28,
                  bottom: 0,
                  child: InkWell(
                    onTap: () {
                      pageControllers.nextPage(
                          duration: Duration(milliseconds: 700),
                          curve: Curves.linear);
                    },
                    child: CircleAvatar(
                      child: Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  )),
              Positioned(
                  top: 0,
                  left: 28,
                  bottom: 0,
                  child: InkWell(
                    onTap: () {
                      pageControllers.previousPage(
                          duration: Duration(milliseconds: 700),
                          curve: Easing.linear);
                    },
                    child: CircleAvatar(
                      child: Icon(Icons.arrow_back_ios_outlined),
                    ),
                  ))
            ],
          ),
        ),
        SmoothPageIndicator(
          controller: pageControllers,
          count: 10,
          // axisDirection: Axis.horizontal,
          effect: ScrollingDotsEffect(
              activeDotScale: 1.4,
              maxVisibleDots: 5,
              radius: 10,
              spacing: 8,
              dotHeight: 9,
              dotWidth: 9,
              activeDotColor: ColorConst.BLUE),
        ),
        Row(
          children: [
            Text(
              'Size: ${clicked + 6}',
              style: GoogleFonts.montserrat(
                color: ColorConst.BLACK,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
            children: List.generate(
          5,
          (index) => Padding(
            padding: EdgeInsets.only(right: index == 4 ? 0 : 5),
            child: InkWell(
              onTap: () {
                clicked = index;
                setState(() {});
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color:
                      clicked == index ? ColorConst.WHITE5 : ColorConst.PRIMARY,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(width: 1.5, color: ColorConst.PRIMARY),
                ),
                child: Text(
                  "${index + 6} UK",
                  style: TextStyle(
                      color: clicked == index
                          ? ColorConst.PRIMARY
                          : ColorConst.WHITE5),
                ),
              ),
            ),
          ),
        )),
      ],
    );
  }
}
