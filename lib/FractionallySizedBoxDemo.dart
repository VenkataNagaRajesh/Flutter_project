import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FractionallySizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('FlotingActionButton Demo'),
            ),
            body: Container(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  heightFactor: 0.5,
                  child: Container(
                    color:Colors.red
                  ),
                )
              ),
            )));
  }
}
