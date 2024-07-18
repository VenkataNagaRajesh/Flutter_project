import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class OverFlowBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _OverFlowBarDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _OverFlowBarDemo extends State<OverFlowBarDemo>
{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('OverFlowBarDemo'),),
        body: Container(
          child:Padding(
            padding: EdgeInsets.all(9.0),
            child: OverflowBar(
              spacing: 8,
              children: [
                ElevatedButton(onPressed: (){}, child: Text('First')),
                ElevatedButton(onPressed: (){}, child: Text('Second')),
                ElevatedButton(onPressed: (){}, child: Text('Third')),
                ElevatedButton(onPressed: (){}, child: Text('Fourth')),
                ElevatedButton(onPressed: (){}, child: Text('Third')),
                ElevatedButton(onPressed: (){}, child: Text('Fourth')),
                ElevatedButton(onPressed: (){}, child: Text('Third')),
                ElevatedButton(onPressed: (){}, child: Text('Fourth'))
              ],
            ),
          )
        )
      ),
    );
  }
  
}