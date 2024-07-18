import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PageViewDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PageViewDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _PageViewDemo extends State<PageViewDemo>
{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('OverFlowBarDemo'),),
        body: Container(
          child:Padding(
            padding: EdgeInsets.all(9.0),
            child: PageView(
              children: [Container(
                color:Colors.orangeAccent,
                child: Center(
                  child: Text("1",style: TextStyle(fontSize: 100),),
                ),
              ),
                Container(
                  color:Colors.orangeAccent,
                  child: Center(
                    child: Text("2",style: TextStyle(fontSize: 100),),
                  ),
                )
              ],
            ),
          )
        )
      ),
    );
  }
  
}