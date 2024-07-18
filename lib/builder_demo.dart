import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Builder_demo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _builder_demo();
  }
}
 class _builder_demo extends State<Builder_demo>{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(home:Scaffold(
     body: myWidget(),
   ),);
  }

  }
myWidget()=> Builder(
  builder: (BuildContext context){
    return Text(
      'Text with Theme',
      style: Theme.of(context).textTheme.displaySmall,
    );
  },
);