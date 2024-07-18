import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class animated_builder_demo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _animated_builder_demo();

}

class _animated_builder_demo  extends State<animated_builder_demo> with TickerProviderStateMixin{
  late final AnimationController _controller = AnimationController(duration: Duration(seconds: 10),vsync: this)..repeat();

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(child: AnimatedBuilder(
            animation:  _controller,
            child: FlutterLogo(size: 100,),
            builder: (BuildContext context, Widget? child) {
              return Transform.scale(scale:5.10,
              child: child,);
            },
          ),),

        )
    );
  }

}