import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../cart/view.dart';
import '../home/view.dart';
import '../profile/view.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int _selectedIndex = 0;
  List<Widget> screens = [HomeScreen(), CartScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 75,
        child: CurvedNavigationBar(
          color: Color(0xFF001F3F),
          backgroundColor: Colors.white,
          buttonBackgroundColor: Color(0xFFFFA599),
          items: <Widget>[
            Icon(Icons.home_sharp, size: 30, color: Colors.white,),
            Icon(Icons.shopping_cart, size: 30, color: Colors.white,),
            Icon(Icons.account_circle, size: 30, color: Colors.white,),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),

      body: screens[_selectedIndex],
    );
  }
}
