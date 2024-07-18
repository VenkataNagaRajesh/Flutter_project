import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToolTipDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _ToolTipDemo();

}

class _ToolTipDemo extends State<ToolTipDemo> {

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          child: Tooltip(
            message:'This is an image',
            child:Text('Hai')
        )

      )
      )
    );
  }
}