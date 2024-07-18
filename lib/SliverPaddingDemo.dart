import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverPaddingDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SliverPaddingDemo();

}

class _SliverPaddingDemo extends State<SliverPaddingDemo> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          child: CustomScrollView(
            slivers: <Widget>[
             SliverPadding(padding: EdgeInsets.all(40.0),
             sliver: SliverList(
               delegate: SliverChildListDelegate(
                 [
                   Container(height: 300,
                   width: 300,
                   color: Colors.black26,)
                 ]
               ),
             ),
             )
            ],
          )
        )
      ),
    );
  }
}