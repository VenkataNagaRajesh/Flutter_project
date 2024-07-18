import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverGridDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SliverGridDemo();
}

class _SliverGridDemo extends State<SliverGridDemo> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          child: CustomScrollView(
            slivers: <Widget>[
           SliverGrid(
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
             ),
              delegate: SliverChildBuilderDelegate(
              (BuildContext context,int index)
              {
                return Container(
                  alignment: Alignment.center,
                  color:Colors.orange[100*(index%3+1)],
                  child: Text("index ${index+1}"),
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