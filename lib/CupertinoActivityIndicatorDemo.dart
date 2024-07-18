import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoActivityIndicator(
        radius: 50,
        color: Colors.orangeAccent,
      ),
    ));
  }
}
