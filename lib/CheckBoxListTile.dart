import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Check_box_list_tile_demo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _Check_box_list_tile_demo();

}

class _Check_box_list_tile_demo  extends State<Check_box_list_tile_demo> {
  bool? _isChecked = false;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(

          child: Column(
            children: [
              Text("e"), CheckboxListTile(
                title:Text('Check box List tile',),
                value: _isChecked,
                onChanged: (bool? newValue){
                  setState(() {
                    _isChecked = newValue;
                  });
                },
                activeColor: Colors.orangeAccent,
                checkColor: Colors.white,
           //     tileColor: Colors.blue,
                subtitle: Text('This is a subtitle'),
                controlAffinity: ListTileControlAffinity.leading,
                // tristate: true,

              ),

            ],
          )
      ),
      ));
  }

}