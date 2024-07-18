import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChoiceChipDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _choiceChipDemo();
  }

}
class _choiceChipDemo extends State<ChoiceChipDemo>
{
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body:ChoiceChip(
            label: Text('Choice chip demo'),
            selected: isSelected,
            selectedColor: Colors.orangeAccent,
            onSelected: (newState)
            {
              setState(() {
                isSelected = newState;
                print(isSelected);
              });

            },
          )
      ),
    );
  }

}