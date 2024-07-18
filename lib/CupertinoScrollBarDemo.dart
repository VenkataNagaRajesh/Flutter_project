import 'package:flutter/cupertino.dart';

class CupertinoScrollBarDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return CupertinoScrollbar(
    child: ListView.builder(itemCount: 50,
    itemBuilder: (BuildContext context, int index){
      return Center(
        child:Text("$index"),
      );
    },),
    thickness: 6.0,
    thicknessWhileDragging: 10.0,
    radius: Radius.circular(34.0),
    radiusWhileDragging: Radius.zero,
  );
  }

}