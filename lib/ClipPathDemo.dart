import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipPathDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
     body: Container(
       child: ClipPath(
         clipper: MyClipper(),
           child:Container(
       width: double.infinity,
       height: 300,
       color: Colors.orange,
     )
     )))
   );
  }
}
class MyClipper extends CustomClipper<Path>
{
  @override
  Path getClip(Size size) {
    return Path()..lineTo(0, size.height)..quadraticBezierTo(size.width/4,

         size.height-40,size.width/2, size.height-20)
        ..quadraticBezierTo(3/4*size.width, size.height, size.width,size.height-30)
    ..lineTo(size.width,0);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
  
}