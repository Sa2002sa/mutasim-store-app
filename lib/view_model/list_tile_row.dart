import 'package:flutter/material.dart';

import '../model/items_model.dart';
import '../widgets/row_Container_in_first_Screen.dart';







class list_tile_row extends StatelessWidget {
  list_tile_row({super.key});
  final List<Item> items = [
    Item(title: 'laptop ', price: 500.0),
    Item(title: 'iphone x ', price: 400.0),
    Item(title: 'keyboard ', price: 40.0),
    Item(title: 'phone', price: 300.0),
    Item(title: 'pc', price: 300)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return container_in_row(txt: items[index].title);
        });
  }
}
