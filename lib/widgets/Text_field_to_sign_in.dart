import 'package:flutter/material.dart';

class Text_field_to_sign_in extends StatelessWidget {
  final  String hinttxt ;
  const Text_field_to_sign_in({required this.hinttxt});

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(

            hintText: hinttxt,
            contentPadding:
            EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ))),
      ),
    );
  }
}
