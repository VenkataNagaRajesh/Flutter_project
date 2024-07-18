import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GuestureDetectorDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _GuestureDetectorDemo();
  }
  
}
class _GuestureDetectorDemo extends State<GuestureDetectorDemo>
{
int count=0;
@override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(body:Center(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.orangeAccent,
        child:   Center(child:GestureDetector(
          onTap: (){
            setState(() {
              count++;
            });
          },
          child: Container(
            height: 150,
              width: 150,
              child:Card(
              elevation: 20,
              child:Center(
                  child:Text(

            count.toString(),
            style: TextStyle(fontSize: 18,color:Colors.blue),
          ))),
        )),
      )))),

    );
  }
  
}