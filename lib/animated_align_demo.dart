import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animated_align_demo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _animated_align_demo();

}

class _animated_align_demo  extends State<animated_align_demo>{
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    selected = !selected;
                  });
                },
                child: Center(child:Container(
                  width: double.infinity,
                  height: 250.0,
                  color: Colors.blueGrey,
                  child: AnimatedAlign(
                    duration: const Duration(seconds: 1),
                    curve: Curves.linearToEaseOut,
                    child: FlutterLogo(size: 50,),
                    alignment: selected?Alignment.topRight:Alignment.bottomLeft,
                  ),
                )),
              ),
            )

        )
    );
  }

}