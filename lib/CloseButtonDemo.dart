import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CloseButtonDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
     body: Container(
       child: CloseButton(
         onPressed: (){
           print("closed");
         },
       )
     ))
   );
  }
}
