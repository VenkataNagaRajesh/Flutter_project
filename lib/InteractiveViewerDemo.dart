import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GridTileDemo.dart';

class InteractiveViewerDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _InteractiveViewerDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _InteractiveViewerDemo extends State<InteractiveViewerDemo>
{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(title: Text('Flutter Mapp'),),
          backgroundColor: Colors.orangeAccent,
        body:InteractiveViewer(
          boundaryMargin: EdgeInsets.all(double.infinity), child: AppBar(title: Text('Interactive Demo'),),
         
        ) ,
      )

    );
  }
  
}