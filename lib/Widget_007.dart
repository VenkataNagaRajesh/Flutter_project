
import 'package:flutter/cupertino.dart';
import 'dart:math' as math;

import 'package:flutter/material.dart';

class Widget007 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Widget007();
}

class _Widget007 extends State<Widget007> with TickerProviderStateMixin
{
  late final AnimationController _controller  =
  AnimationController(vsync: this,duration:
  Duration(seconds: 10))..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AnimatedBuilder(

            child: FlutterLogo(
              size: 150,
            ),
            builder: (BuildContext context,Widget?  child){
              return Transform.rotate(angle: _controller.value * 2.0 * math.pi,
              child: child);

            },
            animation: _controller,
          ),
        ),
      ),
    );
  }
  
}