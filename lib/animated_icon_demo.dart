import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class animated_icon_demo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _animated_icon_demo();

}

class _animated_icon_demo  extends State<animated_icon_demo> with TickerProviderStateMixin {

 bool _isPlay = false;
 late AnimationController _controller;

 @override
 void initState(){
   _controller = AnimationController(
     duration: Duration(seconds: 1),
     vsync: this,
   );
   
 }

 @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body:Container(
          child:Center(
            child: GestureDetector(
              onTap: (){
                if(_isPlay == false)
                  {
                    _controller.forward();
                    _isPlay = true;
                  }
                else
                  {
                    _controller.reverse();
                    _isPlay = false;
                  }
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                progress: _controller,
                size: 100,
              ),
            ),
          )
        )
      )
    );
  }

}