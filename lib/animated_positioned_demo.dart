import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animated_positioned_demo  extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _animated_positioned_demo();

}

class _animated_positioned_demo  extends State<animated_positioned_demo >{

  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                child: SizedBox(width: 500,
                    height: 350,
                child: Stack(
                  children: <Widget>[
                    AnimatedPositioned(
                      width: _isFlat?200:500,
                        height: _isFlat?50:200,
                        top:_isFlat?50:150,
                        left: 150,
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              _isFlat = !_isFlat;
                            },
                            );
                          },
                          child: Container(decoration: BoxDecoration(
                            color:Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(25)
                          ),
                          ),
                        ), duration: Duration(milliseconds: 200))
                  ],
                ),)

            )
        ));
  }

}