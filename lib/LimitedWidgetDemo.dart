import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GridTileDemo.dart';

class LimitedWidgetDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LimitedWidgetDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _LimitedWidgetDemo extends State<LimitedWidgetDemo>
{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(title: Text('Flutter Mapp'),),
          backgroundColor: Colors.orangeAccent,
        body:Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: LimitedBox(
              maxHeight: 50,
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.person,size: 50,),
                  title: Text('Limited Box Demo'),
                ),
              ),
            ),
          ),
        )
      )

    );
  }
  
}