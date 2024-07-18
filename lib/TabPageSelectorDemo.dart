import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabPageSelectorDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _TabPageSelectorDemo();

}

class _TabPageSelectorDemo extends State<TabPageSelectorDemo>  with TickerProviderStateMixin{

  late final TabController controller;
  int _index = 0;
  
  List<Widget> widgets = const[
    Icon(Icons.home),
    Icon(Icons.settings),
    Icon(Icons.person)
  ];
  
  @override
  void initState() {
    super.initState();
    controller = TabController(length: widgets.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            TabBarView(
                children: widgets,
                controller:controller),
            Positioned(
                bottom: 40,
              child: TabPageSelector(
                controller: controller,
                color:Colors.black38
              ),
            )
          ],
        ),
        floatingActionButton: ButtonBar(
          children: [
            FloatingActionButton.small(onPressed:(){
              print(_index);
                     (_index != widgets.length-1)? _index++ : _index=0;
                      controller.animateTo(_index);
            },
              child: Icon(Icons.navigate_next),
              hoverElevation: 0,
              elevation: 0,
            )
          ],
        ),
      )

    );
  }
}