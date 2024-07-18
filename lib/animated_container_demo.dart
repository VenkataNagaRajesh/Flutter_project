import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animated_container_demo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _animated_container_demo();

}

class _animated_container_demo  extends State<animated_container_demo> {

  bool selected = false;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(child: GestureDetector(
            onTap: (){
              setState(() {
                selected = !selected;
              });
            },
            child: Center(
              child: AnimatedContainer(
                  duration: Duration(seconds: 2),
                width: selected ? 200.0 : 100.0,
                height: selected ? 100.0 : 200.0,
                color: selected ? Colors.blueGrey : Colors.white,
                curve: Curves.fastOutSlowIn,
                child: FlutterLogo(size: 75,),
                alignment: selected ? Alignment.center : AlignmentDirectional.topCenter,
              ),
            ),
          ),)

        )
    );
  }

}