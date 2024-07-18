import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAppDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return CupertinoApp(
     debugShowCheckedModeBanner: false,
     theme: CupertinoThemeData(
       brightness: Brightness.dark,
       scaffoldBackgroundColor: Color.fromRGBO(255, 18, 32, 37),
         primaryColor: CupertinoColors.systemOrange
     ),
     home: Text('Flutter App'),
   );
  }
}
