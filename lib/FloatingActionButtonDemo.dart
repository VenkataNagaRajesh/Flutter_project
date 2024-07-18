import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(title: Text('FlotingActionButton Demo'),),
    floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    floatingActionButton: FloatingActionButton(
    onPressed: (){},backgroundColor: Colors.blue,
      child: Icon(Icons.add),
    )));
  }
}
