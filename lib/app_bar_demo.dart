import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBar_demo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _AppBarDemo ();

}

class _AppBarDemo  extends State<AppBar_demo>{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
      appBar: AppBar(title: Text("Flutte app"),
      centerTitle: true,
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.notifications))],
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(onPressed: (){},
        icon: Icon(Icons.menu),),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25)
          )
        ),
      ),

     ),
   );
  }

}