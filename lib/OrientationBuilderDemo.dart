import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class OrientationBuilderDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _OrientationBuilderDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _OrientationBuilderDemo extends State<OrientationBuilderDemo>
{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: OrientationBuilder(builder: (BuildContext context, Orientation orientation) {
          if(orientation == Orientation.portrait)
            {
              return Center(
                child: Text('Portrait'),
              );
            }
          else{
            return Center(
              child: Text('Land Scape'),
            );
          }
        },

        )
      ),
    );
  }
  
}