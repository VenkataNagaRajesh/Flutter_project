import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideTransitionDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SlideTransitionDemo();

}

class _SlideTransitionDemo extends State<SlideTransitionDemo> with TickerProviderStateMixin{

  late final AnimationController _controller = AnimationController(vsync: this,duration: Duration(seconds: 5))..repeat(reverse: false);
  late final Animation<Offset> _OffsetAnimation =  Tween<Offset>(
    begin: Offset(0,0),
    end: Offset(6,0),
  ).animate( CurvedAnimation(parent: _controller, curve: Curves.easeIn));

  @override
  void dispose() {
  _controller.dispose(); 
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          child: Column(
            children: [
           SlideTransition(position: _OffsetAnimation,
           child: Padding(
             padding: EdgeInsets.all(9.0),
             child: FlutterLogo(
               size: 130,
             ),
           ),)
            ],
          ),
        )
      ),
    );
  }
}