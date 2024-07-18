import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GridTileDemo.dart';

class InkWellDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _InkWellDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _InkWellDemo extends State<InkWellDemo>
{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(title: Text('Hero Widget Demo'),),
          body:Center(child:
     Container(
       color: color,
       height: 300,
         width: 300,
         child:
       Center(
           child: InkWell(
             hoverColor: color,
         onTap: (){
           setState(() {
            color = Colors.blue;
           });
         },
           child: Center(child:Ink(
              height: 300,
              width: 300,
             color:color,
              child: Center(
                child: Text('he'),
              ),
            )
           )
       )
       )
      ))),

    );
  }
  
}