import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
     body: Container(
      padding: EdgeInsets.all(8.0),
       color:Colors.orangeAccent,
       alignment: Alignment.center,
       child:Text('Flutter App'),
       constraints: BoxConstraints.expand(height: 200),
       transform: Matrix4.rotationZ(0.6),
))
   );
  }
}
