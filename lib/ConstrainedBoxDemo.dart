import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class constrainedBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
     body: Container(
       child: Center(
         child: ConstrainedBox(
           constraints: BoxConstraints(
             maxWidth: 900,
             maxHeight: 350
           ),
           child: Container(
             color:Colors.orangeAccent,
             width: double.infinity,
           ),
         ),
        ),
     ))
   );
  }
}
