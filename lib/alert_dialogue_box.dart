import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class alert_dialogue_box extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _alert_dialogue_box();

}

class _alert_dialogue_box  extends State<alert_dialogue_box>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Center(
        child: ElevatedButton(
        child: Text('click me'),
    onPressed: (){
    showDialog(context: context, builder: (context) =>
    AlertDialog(
      title: Text('Alert Box'),
      contentPadding: EdgeInsets.all(20.0),
    content: Text('This is the Alert dialogue'),
    actions: [TextButton(onPressed: (){ Navigator.of(context).pop();}, child: Text('Flutter map'))]
    ));
    },
    ),
      ))
    );
  }

}