import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PlaceHolderDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PlaceHolderDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _PlaceHolderDemo extends State<PlaceHolderDemo>
{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('OverFlowBarDemo'),),
        body: Container(
          child: Column(
            children: <Widget>[
              Placeholder(
                fallbackHeight: 300,
                fallbackWidth: 50,
                color:Colors.orangeAccent
              )
            ],
          )
        )
      ),
    );
  }
  
}