import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularProgressDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
     body: Center(
       child:CircularProgressIndicator(
         color: Colors.orangeAccent,
         backgroundColor: Colors.blueGrey,
       )

     ),
     )
   );
  }

}