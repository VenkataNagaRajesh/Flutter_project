import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverAppBarDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SliverAppBarDemo();

}

class _SliverAppBarDemo extends State<SliverAppBarDemo> {

  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 300.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text('Flutter mapp'),
                  background: Container(
                    height: 300,
                    width: double.infinity,
                    color: Colors.white38,
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context,int index)
                        {
                          return ListTile(
                            title:Text('Item ${1+index}'),
                          );
                        },
                  childCount: 30
                ),
              )
            ],
          )
        )
      ),
    );
  }
}