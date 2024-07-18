import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DismissableWidgetDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DismissableWidgetDemo();
  }
  
}
class _DismissableWidgetDemo extends State<DismissableWidgetDemo>
{

  List<int> items = List<int>.generate(100, (index) => index);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body:ListView.builder(itemCount: items.length,
          padding: EdgeInsets.symmetric(vertical:16),
            itemBuilder: (BuildContext context,int index){
            return Dismissible(background: Container(
              color:Colors.red,
              child: Icon(Icons.delete),
            ), key: ValueKey<int>(items[index]),
              onDismissed: (DismissDirection direction){
              setState(() {
                items.removeAt(index);
              });
              },
              child: ListTile(
                title: Text('Item ${items[index]}'),
              ),
           );
            },
          )
      ),
    );
  }
  
}