import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GridTileDemo.dart';

class HeroWidgetDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HeroWidgetDemo();
  }
  
}
class _HeroWidgetDemo extends State<HeroWidgetDemo>
{

@override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(title: Text('Hero Widget Demo'),),
          body:
     Container(child:ListTile(
          trailing: Hero(
            tag:'Tag - 1',
            child: Icon(Icons.person),
          ),
          onTap: ()=> Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => GridTileDemo()
          ),
        ),
       title: Text('Click me'),
     )
      )),

    );
  }
  
}