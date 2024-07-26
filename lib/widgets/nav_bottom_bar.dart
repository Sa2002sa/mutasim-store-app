import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../Screens/cart_screen.dart';
import '../Screens/favorite_screen.dart';
import '../Screens/home_page.dart';
import '../Screens/shopping_screen.dart';

class nav_bottom_bar extends StatefulWidget {
  nav_bottom_bar({super.key});

  @override
  State<nav_bottom_bar> createState() => _nav_bottom_barState();
}

class _nav_bottom_barState extends State<nav_bottom_bar> {
  int _selectedIndex =2;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.search,
        size: 30,
      ),
      Icon(
        Icons.favorite,
        size: 30,
      ),
      Icon(
        Icons.home,
        size: 30,
      ),
      Icon(
        Icons.shopping_cart_rounded,
        size: 30,
      ),
      Icon(
        Icons.settings,
        size: 30,
      ),
    ];
    List Screens = [
      shoopingscreen(),
      favorit_screen(),
      shoopingscreen(),
      cart_screen(),
      home_page(),

    ];

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 500),
        backgroundColor: Colors.grey.shade50,
        color: Colors.grey.shade200,
        items: items,
        height: 70,
        index: _selectedIndex,
        onTap: (index){
          setState(() {
          _selectedIndex=index;
          });

        } ,
      ),
      body: Screens[_selectedIndex],
    );
  }
}
