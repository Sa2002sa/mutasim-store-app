import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class container_in_row extends StatelessWidget {
  const container_in_row({required this.txt});
final String txt ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

decoration: BoxDecoration( color: Colors.teal,
  borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomRight: Radius.circular(12))
),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text(txt,style: TextStyle(color: Colors.white),)),
        ),
      ),
    );
  }
}
