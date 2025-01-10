import 'package:flutter/material.dart';
import 'package:flutter_application_next/utilis/color_const.dart';
import 'package:flutter_application_next/view/home%20screen/home_screen.dart';
import 'package:flutter_application_next/view/shopping%20screen/shopping_screen.dart';
import 'package:flutter_application_next/view/whishlist%20screen/whishlist_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int selectedicon = 2;
  final List<Widget> screens = [
    HomeScreen(),
    WhishlistScreen(),
    ShoppingScreen(),
    Text('data3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        backgroundColor: ColorConst.WHITE5,
        child: Icon(Icons.shopping_cart_outlined),
      ),
      body: screens[selectedicon],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedicon,
        selectedItemColor: ColorConst.PRIMARY,
        unselectedItemColor: ColorConst.BLACK,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            selectedicon = value;
            //  print(value);
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
