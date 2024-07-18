import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _GridViewDemo();
  }
  
}
class _GridViewDemo extends State<GridViewDemo>
{

@override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(body:Center(
      child: Container(

        color: Colors.orangeAccent,
        child:   Center(child:GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,

            ),
            itemBuilder: (_,index)=>GridTile(
              header: GridTileBar(
                backgroundColor: Colors.black,
                leading: Icon(Icons.person),
                title:Text('Flutter Mapp'),
                trailing: Icon(Icons.menu),
              ),
              child: Image.network('',fit: BoxFit.cover,),
              footer: GridTileBar(
                backgroundColor: Colors.black,
                leading: Icon(Icons.favorite),
              ),
            ),
          itemCount: 10,
        ),
      )))),

    );
  }
  
}