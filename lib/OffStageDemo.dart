import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class OffStageDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _OffStageDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _OffStageDemo extends State<OffStageDemo>
{

  bool isHided = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
    appBar: AppBar(title: Text('Offstage Demo'),),
        body: Container(
          child: SizedBox(
            width: double.infinity,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Offstage(offstage: isHided,
                child: Icon(Icons.flutter_dash,
                size: 100,)),
                ElevatedButton(onPressed: (){setState(() {
                  isHided = !isHided;
                });}, child: Text(isHided?'Show':"Hide"))
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}