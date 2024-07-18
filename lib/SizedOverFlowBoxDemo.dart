import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizedOverFlowBoxDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SizedOverFlowBoxDemo();

}

class _SizedOverFlowBoxDemo extends State<SizedOverFlowBoxDemo>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          color: Colors.orangeAccent,
          child: Column(
            children: [
              SizedOverflowBox(
            size: Size(100,100),
            child:
                  ElevatedButton(onPressed: (){},child: Text('this is a button'),)
              )
            ],
          ),
        )
      ),
    );
  }
}