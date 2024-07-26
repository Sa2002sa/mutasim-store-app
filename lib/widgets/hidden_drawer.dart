
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:store_app/Screens/favorite_screen.dart';
import 'package:store_app/Screens/shopping_screen.dart';
import 'package:store_app/widgets/nav_bottom_bar.dart';
class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [


  ];
@override
void initState(){
  super.initState();

_pages = [
  ScreenHiddenDrawer(ItemHiddenMenu(
name : 'shopping screen ',
    baseStyle: TextStyle(fontWeight: FontWeight.bold,
    fontSize: 18), selectedStyle: TextStyle(
color: Colors.white,
  )
  ), nav_bottom_bar(),),

  ScreenHiddenDrawer(ItemHiddenMenu(
      name:   'favourite screen',
      baseStyle: TextStyle(fontWeight: FontWeight.w500), selectedStyle: TextStyle(
    color: Colors.white,
  )
  ), favorit_screen(),)
];
}


  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(screens: _pages,
      actionsAppBar:[
        Icon(size: 25,Icons.shopping_cart_outlined),
        SizedBox(
          width: 20,
        )
      ],
  tittleAppBar: Center(child: Text('متجر معتصم')) ,
        enableCornerAnimation: true,
        elevationAppBar: 0,
        initPositionSelected: 0,
        slidePercent: 60,
        contentCornerRadius: 50,
        backgroundColorAppBar:Colors.transparent,
        boxShadow: [

        ],
        backgroundColorMenu: Colors.teal.shade300);
  }
}
