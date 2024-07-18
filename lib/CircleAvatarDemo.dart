import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleAvatarDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
     body: Center(
       child: CircleAvatar(
         backgroundColor: Colors.orangeAccent,
         radius: 55,
       ),
     ),
     )
   );
  }

}