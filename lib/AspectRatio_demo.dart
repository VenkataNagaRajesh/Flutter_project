import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AspectRatio_demo extends StatelessWidget {  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(body: Container(
      color: Colors.orangeAccent,
      alignment: Alignment.center,
      width: double.infinity,
      height: 150.0,
      child: AspectRatio(
        aspectRatio: 16/9,
        child: Container(
          color: Colors.blueGrey,

        ),
      ),
    ),),
  );
  }
}
