import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizedBoxDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SizedBoxDemo();

}

class _SizedBoxDemo extends State<SizedBoxDemo>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          child: Column(
            children: [
            SizedBox(height: 300,
                width: 300,
            child: Card(
              color:Colors.orangeAccent,
              child: Center(
                child: Text('Flutter Mapp'),
              ),
            ),)
            ],
          ),
        )
      ),
    );
  }
}