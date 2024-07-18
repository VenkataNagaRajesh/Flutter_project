import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animated_opacity_demo  extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _animated_opacity_demo();

}

class _animated_opacity_demo  extends State<animated_opacity_demo >{

  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      AnimatedOpacity(opacity: opacityLevel, duration: Duration(seconds: 2),
                      child: FlutterLogo(size: 50,),),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          opacityLevel = opacityLevel==0?1:0;
                        });
                      }, child: Text("Fade logo"))
                    ],
                  ),

            )

        )
    ));
  }

}