import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GridTileDemo.dart';

class InputChipDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _InputChipDemo();
  }
  
}
class _InputChipDemo extends State<InputChipDemo>
{

  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(title: Text('Hero Widget Demo'),),
          body:Container(
              child:InputChip(
                avatar: CircleAvatar(
                  backgroundImage: NetworkImage(''),

                ),
                label: Text('Einetein'),
                onSelected: (bool newBool){
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                selected: isSelected,
                selectedColor: Colors.white,
                deleteIcon: Icon(Icons.cancel_outlined),
                onDeleted: (){},
              )
          )
      ));

  }
  
}