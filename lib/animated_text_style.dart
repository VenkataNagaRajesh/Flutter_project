import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class animated_textStyle_demo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _animated_textStyle_demo();

}

class _animated_textStyle_demo  extends State<animated_textStyle_demo> {
  
  bool selected = true;
  double fontsize=60;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(child: Column(children: [SizedBox(height: 100,),
            AnimatedDefaultTextStyle(
              style: TextStyle(fontSize: fontsize),
              duration: Duration(milliseconds: 300),
              child: Text('Flutter'),
            ),
            TextButton(onPressed: (){
              setState(() {
                fontsize = selected?90:60; 
                selected = !selected;
              });
            }, child: Text("click me"))



        ],)),


        )
    );
  }

}