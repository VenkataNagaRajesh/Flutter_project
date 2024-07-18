import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverToBoxAdapterDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SliverToBoxAdapterDemo();

}

class _SliverToBoxAdapterDemo extends State<SliverToBoxAdapterDemo> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          child: CustomScrollView(
            slivers: <Widget>[
            SliverToBoxAdapter(
               child: SizedBox(
                 height: 20,
                 child: Center(
                   child: Text(' Child to box adapter'),
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