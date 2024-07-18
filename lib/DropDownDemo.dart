import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DropDownDemo();
  }
  
}
class _DropDownDemo extends State<DropDownDemo>
{

  String dropDownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: dropDownValue,
          icon: Icon(Icons.menu),
          style: TextStyle(color: Colors.white),
          underline: Container(
            height: 2,
            color: Colors.white,

          ),
          items: [DropdownMenuItem(child: Text('One')),
            DropdownMenuItem(child: Text('Two')),
            DropdownMenuItem(child: Text('Three'))
          ],
          onChanged: (String? newValue){},
        ),
      ),
    ),
    );
  }
  
}