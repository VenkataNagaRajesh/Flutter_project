
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomScrollViewDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CustomScrollViewDemo();
  }
  
}
class _CustomScrollViewDemo extends State<CustomScrollViewDemo>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  CustomScrollView(
        slivers: <Widget>[
          SliverGrid(delegate: SliverChildBuilderDelegate(
                  (BuildContext context,int index)
              {
                return Container(
                  alignment: Alignment.center,
                  color:Colors.orange[100*(index%9)],
                  child: Text('Grid item $index'),
                );
              },
              childCount: 50
          ), gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 4.0
          ),

          )
        ],
      ),
    );
  }
  
}