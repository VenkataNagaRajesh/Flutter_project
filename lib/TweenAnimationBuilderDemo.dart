import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TweenAnimationBuilderDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _TweenAnimationBuilderDemo();

}

class _TweenAnimationBuilderDemo extends State<TweenAnimationBuilderDemo> {

  double targetValue = 100;

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin:0,end:targetValue),
            duration: Duration(milliseconds: 500),
            builder: (BuildContext context,double size,Widget? child){
              return IconButton(onPressed: (){
                setState(() {
                  print(targetValue);
                  targetValue = targetValue == 100?250:100;
                });
              }, icon: Icon(Icons.flutter_dash),
                iconSize: targetValue,

              );
            },
          )
        )

      )

    );
  }
}