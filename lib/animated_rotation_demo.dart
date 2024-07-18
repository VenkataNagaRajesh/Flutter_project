import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animated_rotation_demo  extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _animated_rotation_demo();

}

class _animated_rotation_demo  extends State<animated_rotation_demo >{

  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                child:Column(
                  children: <Widget>[

                    Padding(padding: EdgeInsets.all(50),
                    child: AnimatedRotation(
                      turns: turns,
                      duration: Duration(seconds: 1),
                      child: FlutterLogo(size: 100,),
                    ),),

                    ElevatedButton(onPressed: (){
                      setState(() {
                        turns +=1/4;
                      });
                    }, child: Text('Rotate'),
                    style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
                    )
                  ],
                )

            )
        ));
  }

}