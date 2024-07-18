import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverFixedExtentListDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SliverFixedExtentListDemo();

}

class _SliverFixedExtentListDemo extends State<SliverFixedExtentListDemo> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          child: CustomScrollView(
            slivers: <Widget>[
            SliverFixedExtentList(delegate:
                SliverChildBuilderDelegate(
                    (BuildContext context,int index)
                        {
                          return Container(
                            alignment: Alignment.center,
                            color:index.isEven?Colors.white:Colors.black26,
                            child:Text('Item ${index+1}')
                          );
                        }
                )
                , itemExtent: 30)
            ],
          )
        )
      ),
    );
  }
}