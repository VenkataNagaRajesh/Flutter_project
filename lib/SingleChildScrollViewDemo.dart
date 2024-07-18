import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleChildScrollViewDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SingleChildScrollViewDemo();

}

class _SingleChildScrollViewDemo extends State<SingleChildScrollViewDemo>{
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(child:Container(child:Column(children:
        List.generate(50, (index) => ListTile(title: Text('item $index'),))),))
        ));

  }
}