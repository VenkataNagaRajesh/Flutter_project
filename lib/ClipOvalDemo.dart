import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipOvalDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
     body: Center(
       child: ClipOval(
         clipper: CustomClip(),
         child: Container(
           width: 80,
           height: 80,
           color: Colors.orangeAccent,
         ),
       )
     ),
     )
   );
  }
}
class CustomClip extends CustomClipper<Rect>{
  @override
  Rect getClip(Size size) {
   return Rect.fromLTWH(0, 0,size.width-15, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
  
}