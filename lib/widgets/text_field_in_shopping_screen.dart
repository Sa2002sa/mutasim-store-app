import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class text_field_in_shopping_screen extends StatelessWidget {
  const text_field_in_shopping_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return                Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: TextField(
        cursorColor: Colors.lightBlue,

        decoration: InputDecoration(

            hintText: 'what you looking for ...',
            contentPadding:
            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ))),
      ),
    );
  }
}
