import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToggleButtonsDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _ToggleButtonsDemo();

}

class _ToggleButtonsDemo extends State<ToggleButtonsDemo> {

List<bool> isSelected = [false,false,false];
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          child: ToggleButtons(
            children: [Icon(Icons.home),
            Icon(Icons.settings),
            Icon(Icons.person)],
            onPressed: (int index){
              setState(() {
                isSelected[index] = !isSelected[index];
              });
            },
            isSelected: isSelected,
          ),
        )

      )

    );
  }
}