import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverListDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SliverListDemo();

}

class _SliverListDemo extends State<SliverListDemo> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          child: CustomScrollView(
            slivers: <Widget>[
           SliverList(
              delegate: SliverChildBuilderDelegate(
              (BuildContext context,int index)
              {
                return ListTile(
              //    alignment: Alignment.center,
                  tileColor:Colors.orange[100*(index%3+1)],
                  title : Text("index ${index+1}"),
                );
              },
                childCount: 40
              ),
           )
            ],
          )
        )
      ),
    );
  }
}