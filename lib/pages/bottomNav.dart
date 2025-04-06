import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:foodie_go/pages/homepage.dart';
import 'package:foodie_go/pages/order.dart';
import 'package:foodie_go/pages/profile.dart';
import 'package:foodie_go/pages/wallet.dart';

class BottomNavigation extends StatefulWidget {

  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
 late List<Widget> pages;
  late HomePage _homePage;
  late Order _order;
 late  Wallet _wallet;
 late Profile _profile;
 int currentIndex=0;
 @override
  void initState() {
    _homePage=HomePage();
    _order=Order();
    _wallet=Wallet();
    _profile=Profile();
    pages=[_homePage,_order,_wallet,_profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 // backgroundColor: Colors.grey[100], // 👈 Light background
  bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: Colors.transparent, // 👈 Fix 1
    color: Colors.black,                 // 👈 Fix 2: actual nav bar color
    buttonBackgroundColor: Colors.black, // 👈 optional highlight color
    height: 60,
    animationDuration: Duration(milliseconds: 300),
    onTap: (int index) {
      setState(() {
        currentIndex = index;
      });
    },
    items: const [
      Icon(Icons.home, color: Colors.white, size: 30),
      Icon(Icons.shopping_bag, color: Colors.white, size: 30),
      Icon(Icons.wallet, color: Colors.white, size: 30),
      Icon(Icons.person, color: Colors.white, size: 30),
    ],
  ),
  body: pages[currentIndex],
);

  }
}