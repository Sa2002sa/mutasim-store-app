import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:store_app/Screens/animated_splash_screen.dart';
import 'package:store_app/Screens/cart_screen.dart';
import 'package:store_app/Screens/favorite_screen.dart';
import 'package:store_app/Screens/home_page.dart';
import 'package:store_app/Screens/shopping_screen.dart';
import 'package:store_app/Screens/splash_screen.dart';
import 'package:store_app/widgets/gridview.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/widgets/hidden_drawer.dart';
import 'package:store_app/widgets/nav_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp( debugShowCheckedModeBanner: false,

      home:
     home_page(),
    );

  }
}
