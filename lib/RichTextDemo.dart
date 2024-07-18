import 'package:all_widgets/builder_demo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RichTextDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RichTextDemo();
  }
  
}
class _RichTextDemo extends State<RichTextDemo>
{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(title: Text('OverFlowBarDemo'),),
        body: Container(
         child: RichText(
           text:TextSpan(
             style: TextStyle(
               color:Colors.orangeAccent,
             fontSize: 30),
             children: <TextSpan>[
               TextSpan(text:'To the'),
               TextSpan(text: 'moon',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 color:Colors.white
               )),
               TextSpan(text:'and beyond'),
             ]
           )
         ),
      ),
      ));
  }

}