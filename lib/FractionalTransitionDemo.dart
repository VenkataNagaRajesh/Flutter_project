import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FractionalTransitionDemo extends StatelessWidget {
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
                child: Column(children: [
                  Container(
                    color: Colors.blueGrey,
                    height: 100,
                    width: 100,
                  ),
                  FractionalTranslation(translation: Offset(1,-1),
                  child:  Container(
                    color: Colors.red,
                    height: 100,
                    width: 100,
                  ),),
                  FractionalTranslation(translation: Offset(1,-1),
                    child:  Container(
                      color: Colors.orangeAccent,
                      height: 100,
                      width: 100,
                    ),)
                ]),
              ),
            )));
  }
}
