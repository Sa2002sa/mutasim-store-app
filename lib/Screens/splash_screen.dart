import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Center(
          child: CircleAvatar(

            radius: 80,
            backgroundImage: AssetImage('assets/photo_2024-03-30_14-12-58.jpg'),
          ),
        ),
        width: double.infinity,
         height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlue, Colors.purple.shade400],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,

          ),
        ),
      );

  }
}
