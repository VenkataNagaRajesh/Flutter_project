import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectableTextDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SelectableTextDemo();

}

class _SelectableTextDemo  extends State<SelectableTextDemo>{
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SelectableText(
          'This is a selectable text',

        )
      ),
    );
  }
}