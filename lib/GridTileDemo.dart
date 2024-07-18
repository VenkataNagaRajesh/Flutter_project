import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridTileDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _GridTileDemo();
  }
  
}
class _GridTileDemo extends State<GridTileDemo>
{

@override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(body:Center(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.orangeAccent,
        child:   Center(child:GridTile(
          header: Container(
            height: 40,
            child: Center(
              child: Text('Header'),
            ),
          ),
          child: Image.network('',
          fit:BoxFit.cover),
          footer: Container(
            height: 40,
            child: Center(
              child: Text('Footer'),
            ),
            color: Colors.black38,
          ),
        ),
      )))),

    );
  }
  
}