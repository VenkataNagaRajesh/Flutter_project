import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultTextStyleDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DefaultTextStyleDemo();
  }
  
}
class _DefaultTextStyleDemo extends State<DefaultTextStyleDemo>
{
  DateTime selecteDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
              Text("Flutte Mapp"),
           DefaultTextStyle(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.red),
               child:Center(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [Text("Flutter Mapp"),
                   ],
                 ),
               ) )
        ],
      ),
    );
  }
  
}