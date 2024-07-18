import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GridTileDemo.dart';

class IgnorePointerDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _IgnorePointerDemo();
  }
  
}
class _IgnorePointerDemo extends State<IgnorePointerDemo>
{
bool ignore = false,i=false;
@override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(title: Text('Hero Widget Demo'),),
          body:Container(child: Column(
            children: [ElevatedButton(onPressed: (){
              setState(() {
                ignore = !ignore;
              });
            }, child: Text(ignore?'Blocked':'All good')),
              IgnorePointer(
              //S  ignoring: ignore,
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      i = !i;
                    });
                  },
                  child: Text(i?'click me':'clicked'),
                ),
              )
            ],
          ),)
    ),

    );
  }
  
}