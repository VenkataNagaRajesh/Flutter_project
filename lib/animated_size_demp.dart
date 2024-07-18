import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animated_size_demo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _animated_size_demo();

}

class _animated_size_demo  extends State<animated_size_demo>{
  bool selected = false;
  double _size = 300;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
              child:GestureDetector(onTap: (){
                setState(() {
                  _size = _size == 300?100:300;
                });
              },
              child: Container(
                color:Colors.white,
                child:AnimatedSize(curve:Curves.easeIn,
                duration: Duration(seconds:5),
                child: FlutterLogo(size:_size),)
              ),),
            )

        )
    );
  }

}