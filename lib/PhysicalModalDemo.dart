import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PhysicalModalDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PhysicalModalDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _PhysicalModalDemo extends State<PhysicalModalDemo>
{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('OverFlowBarDemo'),),
        body: Container(
          child: Center(
            child: PhysicalModel(
              elevation: 20.0,
              shadowColor: Colors.redAccent,
              color:Colors.orangeAccent,
              shape: BoxShape.circle,
              child:SizedBox(height: 200,
              width: 200,)
            ),
          ),
        )
      ),
    );
  }
  
}