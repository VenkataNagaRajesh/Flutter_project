import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedIconDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ExpandedIconDemo();
  }
  
}
class _ExpandedIconDemo extends State<ExpandedIconDemo>
{

  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child:  Column(children: [
          Container(
            color: Colors.orangeAccent.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Title',style: TextStyle(color:Colors.white, fontSize: 22),),
                ),
                ExpandIcon(
                  isExpanded: _isExpanded,
                  color:Colors.white,
                  expandedColor: Colors.white,
                  onPressed: (bool isExpanded){
                    setState(() {
                      _isExpanded = !isExpanded;
                    });
                  },)
              ],
            ),
          ),
          if(_isExpanded)
            Padding(padding: EdgeInsets.all(15),
            child: Text("Flutte Mapp"),)
        ],
        ),
      ),
    ),
    );
  }
  
}