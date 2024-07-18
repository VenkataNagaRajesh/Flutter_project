import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LinearProgressDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LinearProgressDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _LinearProgressDemo extends State<LinearProgressDemo> with TickerProviderStateMixin
{
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(vsync: this,duration: Duration(seconds: 3))..addListener(() { setState(() {

    });});
    controller.repeat(reverse: true);
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(title: Text('Flutter Mapp'),),
          backgroundColor: Colors.orangeAccent,
        body:Center(
          child: Padding(padding: EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LinearProgressIndicator()

              ],
            ),
          )
        )
      )

    );
  }
  
}