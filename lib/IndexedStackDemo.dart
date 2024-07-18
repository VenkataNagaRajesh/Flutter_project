import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GridTileDemo.dart';

class IndexedStackDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _IndexedStackDemo();
  }
  
}
class _IndexedStackDemo extends State<IndexedStackDemo>
{
int index = 0;
@override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(title: Text('Hero Widget Demo'),),
          body:
     Container(child:Column(children:[Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         ElevatedButton(onPressed: (){
           setState(() {
             index = 0;
           });
         }, child: Text('0')),
         ElevatedButton(onPressed: (){
           setState(() {
             index = 1;
           });
         }, child: Text('1')),

         ElevatedButton(onPressed: (){
           setState(() {
             index = 2;
           });
         }, child: Text('2')),

       ],
     ),
       IndexedStack(
         index: index,
         children: [Center(
           child:Text("one day"),
         ),
           Center(
             child: Text('hello'),
           ),
           Center(
             child: Text('clear'),
           )],
       ),



])
      )),

    );
  }
  
}