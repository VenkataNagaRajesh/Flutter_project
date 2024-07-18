import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class OutlinedButtonDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _OutlinedButtonDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _OutlinedButtonDemo extends State<OutlinedButtonDemo>
{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: OutlinedButton(
            onPressed: (){},
            child: Text('click me'),style:
              OutlinedButton.styleFrom(primary: Colors.white),),

        )
      ),
    );
  }
  
}