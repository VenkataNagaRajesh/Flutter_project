import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FadeTransitionDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FadeTransitionDemo();
  }
  
}
class _FadeTransitionDemo extends State<FadeTransitionDemo> with TickerProviderStateMixin
{

  late final AnimationController _controller =
  AnimationController(duration: Duration(seconds:2),vsync: this)..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation
    (parent: _controller, curve: Curves.easeIn);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: FlutterLogo(size:300),
        ),
       ),
    ),
    );
  }
  
}