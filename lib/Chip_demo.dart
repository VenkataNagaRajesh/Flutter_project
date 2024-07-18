import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chip_demo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      body: Center(
        child: Chip(
          label: Text('This is a flutte app'),
          onDeleted: (){
            debugPrint("Do somthins");
          },
        ),
      ),
    ),
  );
  }

}