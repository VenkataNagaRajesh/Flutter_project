import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExpansionTileDemo();
  }
}

class _ExpansionTileDemo extends State<ExpansionTileDemo> {
  bool _customIcon = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
                child: Column(
      children: <Widget>[
        ExpansionTile(
          title: Text("Expansion Tile"),
          trailing: Icon(_customIcon
              ? Icons.arrow_drop_down_circle
              : Icons.arrow_drop_down),
          children: <Widget>[
            ListTile(
              title: Text('This is tile number2'),
            )
          ],
          onExpansionChanged: (bool expanded) {
            print("heelo ");
          },
          controlAffinity: ListTileControlAffinity.trailing,
        ),
      ],
    ))));
  }
}
