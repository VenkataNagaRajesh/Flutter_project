import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card_demo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Card_demo();
  }
}
class _Card_demo extends State<Card_demo>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(
      body: Center(child:
        Card(
          elevation: 20,
          color:Colors.orangeAccent,
          child: Padding(
            padding: EdgeInsets.all(4.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 8,),
                Text("This is a Flutter car"),
                TextButton(onPressed: (){
                }, child: Text('Cancel'))
              ],

            ),
          ),
        ),),
    ),);
  }

}
