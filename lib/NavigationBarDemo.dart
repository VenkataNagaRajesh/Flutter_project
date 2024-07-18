import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NavigationBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _NavigationBarDemo();
  }
  
}
class _NavigationBarDemo extends State<NavigationBarDemo>
{

  int currentIndex = 0;
  List body = [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.person)
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body: Center(
          child: body.elementAt(currentIndex),
        ),
        bottomNavigationBar: NavigationBar(destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'search'),
          NavigationDestination(icon: Icon(Icons.person), label: 'person'),

        ],
          selectedIndex: currentIndex,
          onDestinationSelected: (int index){
          setState(() {
            currentIndex = index;
          });
          },
        ),
      ),
    );
  }
  
}