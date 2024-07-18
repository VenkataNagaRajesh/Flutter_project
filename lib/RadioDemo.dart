import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RadioDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RadioDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _RadioDemo extends State<RadioDemo>
{

  List<String> options = ['Male','Female'];

  @override
  Widget build(BuildContext context) {
    String currentOption = options.first;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('OverFlowBarDemo'),),
        body: Container(
          child: Center(
            child: Column(children: [
              ListTile(
                title: Text(options.first.toString()),
                leading: Radio(
                value: options.first,
                groupValue: currentOption,
                onChanged: (value){
                  setState(() {
                    currentOption = value.toString();
                    pragma(currentOption);
                  });
                },
              ),),
              ListTile(leading: Radio(
                value: options.last,
                groupValue: currentOption,
                onChanged: (value){
                  setState(() {
                    currentOption = value.toString();
                  });
                },
              ),)
            ],)
          ),
        )
      ),
    );
  }
  
}