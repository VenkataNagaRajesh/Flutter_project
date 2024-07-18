import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PreferedSizeDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PreferedSizeDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _PreferedSizeDemo extends State<PreferedSizeDemo>
{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors:<Color>[
                  Colors.redAccent,
                  Colors.orangeAccent
                ]
              )
            ),
            child: SafeArea(child: Center(child: ListTile(
              trailing: Text('Fluttermapp'),
            ),),)
          ),
        ),
        body: Container(
          child: Center(
                      ),
        )
      ),
    );
  }
  
}