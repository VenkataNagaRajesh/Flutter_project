import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _TabBarDemo();

}

class _TabBarDemo extends State<TabBarDemo> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              bottom:  TabBar(
                tabs: [
                  Tab(
                      icon:Icon(Icons.home)
                  ),
                  Tab(icon: Icon(Icons.settings)),
                  Tab(icon: Icon(Icons.person))
                ],
              ),
            ),
            body:TabBarView(
              children: [Container(color: Colors.orangeAccent,
                  child: Icon(Icons.home)),
                Container(color: Colors.blueAccent,
                    child: Icon(Icons.home)),
                Container(color: Colors.purpleAccent,
                    child: Icon(Icons.home)
                )],
            )
        ),
      )

    );
  }
}