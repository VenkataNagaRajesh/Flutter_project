import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DecoratedBoxDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DecoratedBoxDemo();
  }
  
}
class _DecoratedBoxDemo extends State<DecoratedBoxDemo>
{
  DateTimeRange selectedDates = DateTimeRange(start: DateTime.now(), end: DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(height: 200,
        width: 350,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: <Color>[
                Colors.deepOrange,
                Colors.red
              ]
            )
          ),
        ),),
    );
  }
  
}