import 'package:all_widgets/builder_demo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RotationTransitionDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RotationTransitionDemo();
  }
  
}
class _RotationTransitionDemo extends State<RotationTransitionDemo>
    with TickerProviderStateMixin
{

late final AnimationController _controller = AnimationController(
    vsync: this,duration: Duration(seconds: 2))..repeat(reverse: false);

late final Animation<double> _animation = CurvedAnimation(
  parent: _controller,
  curve: Curves.easeInCirc
);

@override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(title: Text('OverFlowBarDemo'),),
        body: Container(
         child: RotationTransition(turns: _animation,
           child: Container(
             child: FlutterLogo(size: 50,),
           ),
           
         )
      ),
      ));
  }

}