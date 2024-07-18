import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverOpacityDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SliverOpacityDemo();

}

class _SliverOpacityDemo extends State<SliverOpacityDemo> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverOpacity(opacity: 0.1,
              sliver: SliverList(delegate:
              SliverChildListDelegate(
                [
                  Card(
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text('Flutter Mapp'),
                      ),
                    ),
                  )
                ]
              )),)
            ],
          )
        )
      ),
    );
  }
}