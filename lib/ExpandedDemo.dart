import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ExpandedDemo();
  }
  
}
class _ExpandedDemo extends State<ExpandedDemo>
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child:  Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex:2,
                child: Container(
                  color: Colors.blue,
                  height: 200,
                )),
            Expanded(
              flex: 1,
                child: Container(
                  color:Colors.orange,
                  height: 200,
                )),
            Expanded(flex:3,
                child: Container(
                  color: Colors.red,
                  height: 200,
                ))
          ],
        ),)
      ),
    ),
    );
  }
  
}