import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaleTransitionDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _ScaleTransitionDemo ();

}

class _ScaleTransitionDemo   extends State<ScaleTransitionDemo> with TickerProviderStateMixin
{

  late final AnimationController _controller = AnimationController
    (vsync: this,
      duration: Duration(seconds: 2))..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ScaleTransition(
            scale: _animation,
            child: FlutterLogo(size:150),
          ),
        )
      ),
    );
  }

}