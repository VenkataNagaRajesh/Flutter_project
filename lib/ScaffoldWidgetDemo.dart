import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldWidgetDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScaffoldWidgetDemo();

}

class _ScaffoldWidgetDemo extends State<ScaffoldWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(title: Text('Flutter Mapp')
    ,
    )
    ,
    body
    :
    Center
    (
    child
    :
    ElevatedButton
    (
    onPressed
    :
    (
    ){
    },
    child: Text('click'),
    ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    floatingActionButton: FloatingActionButton(
    child: Icon(Icons.add,),
    onPressed: (){

    },
    tooltip: 'Increment counter',
    ),
    drawer: Drawer(
    child: Column(
    children: [
    DrawerHeader(
    child: Column(
    children: [
    Icon(Icons.person, size: 64),
    SizedBox(height: 10),
    Text(
    'User Name',
    style: TextStyle(fontSize: 18, color: Colors.white),
    ),
    ],

    ),
    // decoration: BoxDecoration(
    // color: Colors.blue,
    // ),
    ),
    // Divider
    Divider(),
    // ListView inside Drawer
    Expanded(
    child: ListView.builder(
    itemBuilder: (BuildContext context, int index) {
    return ListTile(
    title: Text('Item $index'),
    onTap: () {
    // Handle item tap
    Navigator.pop(context); // Close the drawer
    // You can add additional navigation logic here
    },
    );
    },
    itemCount: 10, // Replace with your actual itemCount
    ),
    ),
    ],
    )
    ,
    )
    ,
    ));
  }

}