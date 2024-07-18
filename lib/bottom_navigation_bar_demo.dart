import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom_navigationBar_demo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _bottom_navigation_bar_demo();

}

class _bottom_navigation_bar_demo extends State<Bottom_navigationBar_demo>
{
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person)
  ];
    int _currentIndex = 0;
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(appBar: AppBar(title: Text('bottom_navigationBar_demo'),),
        body: Center(
          child: body[_currentIndex],
        ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (int newIndex){
              setState(() {
                _currentIndex = newIndex;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),
              label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.menu),
                  label: "menu"),
              BottomNavigationBarItem(icon: Icon(Icons.music_note),
                  label: "music"),

            ],

          ),
        ) );
    }


}