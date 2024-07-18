import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class align_widget_demp extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _align_widget_demp();

}

class _align_widget_demp  extends State<align_widget_demp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
             child: Container(
               height: 120.0,
               width: double.infinity,
               color: Colors.blueGrey,
               child: Align(
                 alignment: Alignment.topRight,
                 child: FlutterLogo(size: 60,),
               ),
             ),
            ))
    );
  }

}