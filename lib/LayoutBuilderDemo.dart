import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GridTileDemo.dart';

class LayoutBuilderDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LayoutBuilderDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _LayoutBuilderDemo extends State<LayoutBuilderDemo>
{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(title: Text('Flutter Mapp'),),
          backgroundColor: Colors.orangeAccent,
        body:LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth>600)
            {
              return Center(
                child: Image.network('src'),
              );
            }
          else
            {
              return Center(
                child: Text('Screen under 6000')
              );
            }
        },

        ) ,
      )

    );
  }
  
}