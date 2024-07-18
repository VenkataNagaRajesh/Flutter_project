import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DecoratedBoxTransitionDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DecoratedBoxTransitionDemo();
  }
  
}
class _DecoratedBoxTransitionDemo extends State<DecoratedBoxTransitionDemo> with TickerProviderStateMixin
{

  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: Colors.white,
      border: Border.all(style: BorderStyle.none),
      //change the border radius for various changes
      borderRadius: BorderRadius.circular(600.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color:Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 3.0,
          offset: Offset(0,6.0)
        )
      ]
    ),

    end: BoxDecoration(
      color: Colors.white,
      border:Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.circular(10.0)
      
    ),
  );
  
  late final AnimationController  _controller = AnimationController(vsync: this,
  duration: Duration(seconds: 3),
  )..repeat(reverse: true);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
child: DecoratedBoxTransition(
  child: Container(child:FlutterLogo(size: 50),width: 250,height: 250,),
  decoration: decorationTween.animate(_controller),
),
      ),
    );
  }
  
}