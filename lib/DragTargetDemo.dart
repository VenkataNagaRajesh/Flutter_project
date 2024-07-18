import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DraggableScrollableDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DraggableScrollableDemo();
  }
  
}
class _DraggableScrollableDemo extends State<DraggableScrollableDemo>
{

  Color caughtColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Draggable(
                    data: Colors.orangeAccent,
                    child: Container(
                      width: 100.0,
                        height: 100.0,
                      color:Colors.orangeAccent,
                      child: Center(
                        child: Text('Box'),
                      ),
                    ) ,
                  onDraggableCanceled: (velocity,offset){},
                  feedback: Container(
                    width: 150.0,
                    height: 150.0,
                    color:Colors.orangeAccent.withOpacity(0.5),
                    child: Center(
                      child: Text('Box',
                      style: TextStyle(color: Colors.white,
                      decoration: TextDecoration.none),),

                    ),
                  ),
                ),
                DragTarget(builder:(BuildContext context,List<dynamic> accepted,List<dynamic> rejected){
                  return Container(width: 200,height: 200,
                      child: Center(child:Text('Drag here')),
                      color: accepted.isEmpty?caughtColor:Colors.grey.shade200 );
                },
                onAccept: (Color color){
                  caughtColor = color;
                },
                )
              ],
            ),
          )
      ),
    );
  }
  
}