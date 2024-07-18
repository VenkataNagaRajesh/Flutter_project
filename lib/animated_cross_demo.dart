import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animated_corss_demo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _animated_corss_demo();

}

class _animated_corss_demo  extends State<animated_corss_demo> {

  bool selected = false;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: double.infinity,
                height: 100,),
                TextButton(onPressed: (){
                  setState(() {
                    selected = !selected;
                  });
                }, child: Text('Switch',
                style: TextStyle(color: Colors.blueGrey ),)),
                AnimatedCrossFade(firstChild: FlutterLogo(size: 50,), secondChild: FlutterLogo(size: 100,), crossFadeState: selected?CrossFadeState.showFirst:CrossFadeState.showSecond, duration: Duration(seconds: 2))
              ],
            ),
          )
        )
    );
  }

}