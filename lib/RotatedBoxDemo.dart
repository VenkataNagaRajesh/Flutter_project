import 'package:all_widgets/builder_demo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RotatedBoxDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RotatedBoxDemo();
  }
  
}
class _RotatedBoxDemo extends State<RotatedBoxDemo>
{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(title: Text('OverFlowBarDemo'),),
        body: Container(
         child: RotatedBox(
              quarterTurns: 2,
           child: FlutterLogo(size:200,),
         ),
      ),
      ));
  }

}