import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeviderDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DeviderDemo();
  }
  
}
class _DeviderDemo extends State<DeviderDemo>
{

  List<int> items = List<int>.generate(100, (index) => index);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
            child: Column(
              children: <Widget>[
                Container(
                height: 50,
                width: double.infinity,
              color: Colors.orangeAccent,
            ),
            Divider(
              color: Colors.white,
              height: 10,
              thickness: 3,
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.orangeAccent,
            )

              ],
            ),
          )
      ),
    );
  }
  
}