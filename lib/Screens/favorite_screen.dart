

import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:store_app/Screens/home_page.dart';

class favorit_screen  extends StatefulWidget {
  const favorit_screen ({super.key});

  @override
  State<favorit_screen> createState() => _favorit_screenState();
}

class _favorit_screenState extends State<favorit_screen> {
  List<ScreenHiddenDrawer> _pages =[];
  @override




  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('favorite screen '),
      ),
    );
  }
}
