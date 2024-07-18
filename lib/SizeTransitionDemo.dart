import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeTransitionDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SizeTransitionDemo ();

}

class _SizeTransitionDemo   extends State<SizeTransitionDemo> with TickerProviderStateMixin{


  //if do want to make only one time transition the remove ..repeat(reverse:false).
  late final AnimationController _controller = AnimationController(vsync: this,
      duration: Duration(seconds: 1))..repeat(reverse: false);

  late final Animation<double> _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInSine);

  // if do want to make the animation only once then make uncomment the below function
  // @override
  // void initState() {
  //   _controller.forward();
  //   super.initState();
  // }
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
              SizeTransition(sizeFactor: _animation,
                axis: Axis.horizontal,
                axisAlignment: -1,
                child: Text("Heelo india ",style: TextStyle(fontSize: 30,color:Colors.blue),),
              )
            ],
          ),
        )
      ),
    );
  }
}