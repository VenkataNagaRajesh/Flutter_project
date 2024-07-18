import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridPaperDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _GridPaperDemo();
  }
  
}
class _GridPaperDemo extends State<GridPaperDemo>
{
int count=0;
@override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(body:Center(
      child: Container(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: GridPaper(
            color:Colors.purple,
            divisions: 1,
              interval: 210,
            subdivisions: 5,
          ),
        ),
       ),

    )));
  }
  
}