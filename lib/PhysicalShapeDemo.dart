import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PhysicalShapeDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PhysicalShapeDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _PhysicalShapeDemo extends State<PhysicalShapeDemo>
{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('OverFlowBarDemo'),),
        body: Container(
          child: Center(
            child: PhysicalShape(
              elevation: 5.0,
              clipper: ShapeBorderClipper(
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                )
              ),
              color: Colors.orangeAccent,
              child: SizedBox(height: 250,
              width: 250,
              child: Center(
                child:Icon(Icons.flutter_dash,
                size: 100,)

              ),),
            )
          ),
        )
      ),
    );
  }
  
}