import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class black_drop_filter_demo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _black_drop_filter_demo();

}

class _black_drop_filter_demo  extends State<black_drop_filter_demo> {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(home: Scaffold(
     body: Container(
       child: Stack(
         children: <Widget>[
           Text('0'*10000,style: TextStyle(color:Colors.black),),
           Center(child:ClipRect(
             child: BackdropFilter(
               filter:ImageFilter.blur(
                 sigmaX: 4.0,
                 sigmaY: 4.0
               ),
               child: Container(
                 alignment: Alignment.center,
                 width: 250,
                   height: 250,
               ),
             ),
           ))
         ],
       ),
     ),
   ),);
  }

}