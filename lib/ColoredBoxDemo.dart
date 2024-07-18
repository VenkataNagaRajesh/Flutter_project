import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColoredBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
     body: Container(
       child: Center(
         child:ColoredBox(
           color:Colors.orangeAccent,
           child:SizedBox(
             width: 100,
             height: 100,
           )
         )),
     ))
   );
  }
}
