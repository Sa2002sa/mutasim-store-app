import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/Screens/home_page.dart';
import 'package:store_app/Screens/splash_screen.dart';
import 'package:store_app/widgets/nav_bottom_bar.dart';

class animated_splash_screen extends StatelessWidget {
  const animated_splash_screen({super.key});

  @override
  Widget build(BuildContext context) {

    return AnimatedSplashScreen (
        pageTransitionType:PageTransitionType.fade,
        splashTransition: SplashTransition.fadeTransition ,
        splashIconSize: double.infinity,
        splash:
        splashscreen(),



    nextScreen:  home_page(),
    );
    }
}
