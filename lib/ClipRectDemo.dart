import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipRectDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
     body: Container(
       child: Center(
         child: ClipRect(
           clipper: MyClipper(),
           child: Container(
           width: 3000,
           height: 3000,
           color: Colors.orangeAccent,
         ),
       )),
     ))
   );
  }
}
class MyClipper extends CustomClipper<Rect>
{
  @override
  Rect getClip(Size size) {
    //based on the LT  values the block will adjust
    return const Rect.fromLTWH(50, 0, 80, 80);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
   return false;
  }

}