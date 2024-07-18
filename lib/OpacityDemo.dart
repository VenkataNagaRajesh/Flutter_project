import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class OpacityDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _OpacityDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _OpacityDemo extends State<OpacityDemo>
{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [Opacity(opacity: 1,
          child: Container(
            width: double.infinity,
            height: 100,
            color:Colors.orangeAccent,
            alignment: Alignment.center,
            child: Text('Flutter Mapp'),
          ) ,),
            Opacity(opacity: 0.5,
              child: Container(
                width: double.infinity,
                height: 100,
                color:Colors.orangeAccent,
                alignment: Alignment.center,
                child: Text('Flutter Mapp'),
              ) ,),
            Opacity(opacity: 0.1,
              child: Container(
                width: double.infinity,
                height: 100,
                color:Colors.orangeAccent,
                alignment: Alignment.center,
                child: Text('Flutter Mapp'),
              ) ,)],
        ),
      ),
    );
  }
  
}