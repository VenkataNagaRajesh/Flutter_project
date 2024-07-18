import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MaterialAppDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MaterialAppDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _MaterialAppDemo extends State<MaterialAppDemo>
{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: Scaffold(),
    );
  }
  
}