import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:store_app/model/items_model.dart';
import 'package:store_app/widgets/row_Container_in_first_Screen.dart';

class first_Screen extends StatefulWidget {
  first_Screen({super.key});

  @override
  State<first_Screen> createState() => _first_ScreenState();
}

class _first_ScreenState extends State<first_Screen> {
  final List<Item> items = [
    Item(title: 'laptop ', price: 500.0),
    Item(title: 'iphone x ', price: 400.0),
    Item(title: 'keyboard ', price: 40.0),
    Item(title: 'phone', price: 300.0),
    Item(title: 'pc', price: 300),
    Item(title: 'mouse', price: 300.0),
    Item(title: 'screen', price: 300.0),
    Item(title: 'samsung', price: 300.0),
  ];

  @override
  Widget build(BuildContext context) {
    return

     Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:

              Row(
                children: [Container(
                  height: 60,
                width: 700,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context,index){
                        return container_in_row(txt: items[index].title);
                      }),
                ),

                ],
              ),



          ),

        );
  }
}
