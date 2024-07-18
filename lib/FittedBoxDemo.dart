import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FittedBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
     body: Center(child:Container(
       width: double.infinity,
      // height: 50,
       color: Colors.orangeAccent,
       child: FittedBox(
         child: Text('This is a pretty long text',
           style: TextStyle(color:Colors.blue),
         ),
       )),

     ))
   );
  }
}
