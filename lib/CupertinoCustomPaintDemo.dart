import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoCustomPaintDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CupertinoCustomPaintDemo();
  }
  
}
class _CupertinoCustomPaintDemo extends State<CupertinoCustomPaintDemo>
{
  bool lights = false;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(20),
      child: Center(
        child: CustomPaint(
          child: Text('This is Pac-Man',
          style: TextStyle(
            color: Colors.black,
            backgroundColor: Colors.white,
            fontSize: 30,
          ),),
          painter: DemoPainter(),
        )
      ),
    );
  }
  
}

class DemoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
  var center = size/2;
  var paint = Paint()..color = Colors.yellow;
  canvas.drawArc(Rect.fromCenter(center: Offset(center.width,center.height),
      width: 250,
      height: 250),
      0.4, 2*3.14-0.8, true, paint);
  
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw false;
  }
  
}