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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body:DraggableScrollableSheet(
            builder: (BuildContext context,ScrollController scrollcontroller){
              return Container(
                color: Colors.orangeAccent,
                child: ListView.builder(itemBuilder: (BuildContext context,int index){
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
                controller: scrollcontroller,),
              );
            },
          )
      ),
    );
  }
  
}