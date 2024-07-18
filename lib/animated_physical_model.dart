import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animated_physical_model_demo  extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _animated_physical_model_demo();

}

class _animated_physical_model_demo  extends State<animated_physical_model_demo >{

  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    AnimatedPhysicalModel(child: SizedBox(
                      height: 120,
                        width: 120,
                    ),
                        shape: BoxShape.rectangle,
                        elevation: _isFlat ?0:8,
                        color: Colors.white,
                        curve: Curves.fastOutSlowIn,
                        shadowColor: Colors.black,
                        duration: Duration(seconds: 1)),
                    SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        _isFlat = !_isFlat;
                        print(_isFlat);
                      });
                    }, child: Text('click'))
                  ],
                )

            )
        ));
  }

}