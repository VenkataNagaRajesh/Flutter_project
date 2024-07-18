import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VisibilityDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _VisibilityDemo();

}

class _VisibilityDemo extends State<VisibilityDemo> {

  bool isVisible = true;
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Padding(padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
               TextButton(onPressed: (){
                 print(isVisible);
                 setState(() {
                   isVisible = !isVisible;
                 });
               },
                   child: Text('Show/hide'),),
                Container(
                  height: 200,
                  width: double.infinity,
                  color:Colors.orangeAccent,
                child:  Text('Division',
                  style: TextStyle(color: Colors.blue),),
                ),
                SizedBox(height: 20,),
                Visibility(visible: isVisible,
                child:     Container(
                    height: 200,
                    width: double.infinity,
                    color:Colors.orangeAccent,
                    child: Container(
                      child: Text('Division',
                        style: TextStyle(color: Colors.white10),),
                    )
                ),)
              ],
            ),

          ),
        )
      )
    );
  }
}