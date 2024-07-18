import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollWidgdetDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _ScrollWidgdetDemo ();

}

class _ScrollWidgdetDemo   extends State<ScrollWidgdetDemo>{
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Scrollbar(
        controller: controller,
          child: ListView.builder(itemBuilder: (BuildContext context,int index){
            return ListTile(
              title: Text('Item ${index+1}'),
            );
          },itemCount: 100,),
        ),
      ),
    );
  }
}