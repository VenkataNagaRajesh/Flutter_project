import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipRRectDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
     body: Container(
       child: Center(
         child: ClipRRect(
           borderRadius: BorderRadius.circular(30),
           child:Container(color:Colors.blue,
           height: 300,
           width: 300,)
         )),
     ))
   );
  }
}
