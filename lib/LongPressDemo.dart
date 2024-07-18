import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ListViewBuilderDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ListViewBuilderDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _ListViewBuilderDemo extends State<ListViewBuilderDemo>
{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(title: Text('Flutter Mapp'),),
        //  backgroundColor: Colors.orangeAccent,
        body:Center(
          // child: ListView.separated(itemBuilder: (BuildContext context,int index)
          //     {
          //       return ListTile(
          //         title: Text('Flutter Mapp'),
          //         tileColor: Colors.orangeAccent,
          //         onTap: (){},
          //         leading: Icon(Icons.person),
          //         trailing: Icon(Icons.menu),
          //
          //       );
          //     }, separatorBuilder: (BuildContext context,int index)
          //     {
          //   return Divider();
          //     }, itemCount: 10)
          
          child: ListView.builder(itemCount: 5,
              itemBuilder: (BuildContext context,int index){
            return ListTile(
              leading: Icon(Icons.person),
            );

              }),
        )

      )

    );
  }
  
}