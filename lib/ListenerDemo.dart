import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ListenerDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ListenerDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _ListenerDemo extends State<ListenerDemo> with TickerProviderStateMixin
{

  int numbberOfProcesse = 0;
  int numberOfReleeses = 0;
  double x = 0.0;
  double y = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(title: Text('Flutter Mapp'),),
          backgroundColor: Colors.orangeAccent,
        body:Center(
          child: Listener(
            onPointerDown: (PointerDownEvent event){
                setState(() {
                  numbberOfProcesse++;
                });
            },
            onPointerUp: (PointerUpEvent event){
              setState(() {
                numberOfReleeses++;
              });
            },
            child: Container(
              width: 250,
              height: 250,
              color:Colors.orangeAccent,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Text('presses  $numbberOfProcesse')],
              )
            ),
          ),
        )
      )

    );
  }
  
}