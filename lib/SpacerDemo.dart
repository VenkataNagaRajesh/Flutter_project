import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpacerDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SpacerDemo();

}

class _SpacerDemo extends State<SpacerDemo> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          child:Container(
            child: Column(
              children: [
                Container(color:Colors.orangeAccent,
              height: 100),
              Spacer(flex:5,),
              Container(color:Colors.orangeAccent,
                height: 100,),
                Spacer(flex: 7,),
                Container(color:Colors.orangeAccent,
                  height: 100,)
              ],
            ),
          )
        )
      ),
    );
  }
}