import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerHeaderDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DrawerHeaderDemo();
  }
  
}
class _DrawerHeaderDemo extends State<DrawerHeaderDemo>
{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Telegram'),),
        //do u want to replace the location of the drawer u can user endDrawer instead of drawe.
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),

              ListTile(
              title: Text('Item 1'),
            ),
            ListTile(title: Text('Item 2'),)],
          ),
        ),
        body: Center(
          child: Builder(builder:(context)=>
            ElevatedButton(
            child: Text('Click me'),
         onPressed: (){
              //if the drawer is adjusted at the right side of the app bar then u can use end drawer insteadof openEndDrawer.
              Scaffold.of(context).openDrawer();
         }, ),
          )),
      ),
    );
  }
  
}