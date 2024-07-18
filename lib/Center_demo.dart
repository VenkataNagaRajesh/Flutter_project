import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Center_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column
          (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.orangeAccent,
              child: Center(
                heightFactor: 5,
                widthFactor: 150,
                child: Text('Flutter app'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
