import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageRouteDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Center(
    child: CupertinoButton(child: Text('click here'),
    onPressed: (){
      Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context){
        return PageTwo();
      }));
    },),
   );
  }

}

class PageTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(child:Text('Page two')),

    );
  }

}