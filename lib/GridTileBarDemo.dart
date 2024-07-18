import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridTileBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _GridTileBarDemo();
  }
  
}
class _GridTileBarDemo extends State<GridTileBarDemo>
{
int count=0;
@override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(body:Center(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.orangeAccent,
        child:
          GridTile(
            header: GridTileBar(
              backgroundColor: Colors.black45,
              leading: Icon(Icons.person),
              title: Text('Flutter App'),
              trailing: Icon(Icons.menu),
            ),
            child: Image.network(''),
            footer: GridTileBar(
              backgroundColor: Colors.black26,
              leading: Icon(Icons.favorite),

            ),
          )
      ))));


  }
  
}