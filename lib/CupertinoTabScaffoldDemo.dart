import 'package:flutter/cupertino.dart';

class CupertinoTabScaffoldDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CupertinoTabScaffoldDemo();
  }
  
}
class _CupertinoTabScaffoldDemo extends State<CupertinoTabScaffoldDemo>
{
  bool lights = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(tabBar: CupertinoTabBar(items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: 'Home'),
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings),label: "Settings")
    ],

    ), tabBuilder: (BuildContext context,int index){
      return CupertinoTabView(
        builder: (BuildContext context) {
          return Center(
            child: Icon(index==0?CupertinoIcons.home:CupertinoIcons.settings,size: 80,),
          );
        },
      );
    });
  }
  
}