import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animated_switcher_demo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _animated_switcher_demo();

}

class _animated_switcher_demo  extends State<animated_switcher_demo>{
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Switcher Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedSwitcher(duration: Duration(milliseconds: 500),
              child: Text("$count",style: TextStyle(fontSize: 40),
              key: ValueKey(count),),
              transitionBuilder: (Widget child,Animation<double> animation){
                return ScaleTransition(scale: animation,child:child);
              },

              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  count+=1;
                });
              }, child: Text('Add'))
            ],
          ),
          )
        ),
      );

  }
}