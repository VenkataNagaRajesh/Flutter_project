import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColoredFilterDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
     body: Container(
       child: Center(
         child:ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.white,
              BlendMode.color,
            ),

         )),
     ))
   );
  }
}
