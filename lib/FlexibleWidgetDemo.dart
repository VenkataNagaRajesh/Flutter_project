import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexibleWidgetDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(title: Text('Flexible Widget Demo'),),
     body: Center(child:Container(
       child: Column(
         children: [
           Flexible(
             flex: 5,
               fit: FlexFit.tight,
               child: Container(
             height: 50,
             color:Colors.yellow,
           )),
           Flexible(
             flex: 4,
               fit: FlexFit.tight,
               child: Container(
                 height: 100,
                 color:Colors.orangeAccent,
               ) ),
           Flexible(
           flex: 3,
               fit: FlexFit.tight,

               child: Container(
               color: Colors.red,
               height: 200,))
         ],
       ),
     )

     ))
   );
  }
}
