import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ListTileDemmo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ListTileDemmo();
  }
  
}
Color color = Colors.orangeAccent;
class _ListTileDemmo extends State<ListTileDemmo>
{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(title: Text('Flutter Mapp'),),
        //  backgroundColor: Colors.orangeAccent,
        body:Center(
          child: ListTile(
            title: Text('Flutter Mapp'),
            tileColor: Colors.orangeAccent,
            onTap: (){},
            leading: Icon(Icons.person),
            trailing: Icon(Icons.menu),
          )
        )
      )

    );
  }
  
}