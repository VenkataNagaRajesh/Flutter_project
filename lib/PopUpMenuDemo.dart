import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PopUpMenuDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PopUpMenuDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _PopUpMenuDemo extends State<PopUpMenuDemo>
{
List<String> titles = ['Edit','Delete','View'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('OverFlowBarDemo'),),
        body: Container(
          child:ListTile(
            title: Text('hello'),
            trailing: PopupMenuButton<String>(
              itemBuilder: (context)=>[
                PopupMenuItem(child: Text(titles.elementAt(0))),
                PopupMenuItem(child: Text(titles.elementAt(1))),
                PopupMenuItem(child: Text(titles.elementAt(2))),
              ],
              onSelected: (String value){

              },
            ),
          )
        )
      ),
    );
  }
  
}