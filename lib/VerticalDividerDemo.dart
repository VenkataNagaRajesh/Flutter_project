import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerticalDividerDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _VerticalDividerDemo();

}

class _VerticalDividerDemo extends State<VerticalDividerDemo> {

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Padding(padding: EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
                Expanded(child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orangeAccent,
                  ),
                )),
                VerticalDivider(
                  width: 40,
                  thickness: 1,
                  indent: 30,
                  endIndent: 100,
                  color: Colors.grey,
                ),
                Expanded(child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orangeAccent,
                  ),
                ))
              ],
            ),
            
          ),
        )
      )
    );
  }
}