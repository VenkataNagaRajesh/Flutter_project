import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ListWheelScrollViewDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ListWheelScrollViewDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _ListWheelScrollViewDemo extends State<ListWheelScrollViewDemo>
{

List<String> fruits  = ['Mango','Apple','Banana','Orange','Papaya','Gowa','Pine apple'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(title: Text('Flutter Mapp'),),
        //  backgroundColor: Colors.orangeAccent,
        body:Container(
          child: ListWheelScrollView(
            itemExtent: 100,
            children: List.generate(
              fruits.length,
                (index)=>ListTile(
                  title: Text(fruits[index].toString()),
                  onTap: (){},
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.menu),
                )

            ),
          ),
        )

      )

    );
  }
  
}