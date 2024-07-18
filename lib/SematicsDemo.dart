import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SematicsDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SematicsDemo();

}

class _SematicsDemo   extends State<SematicsDemo>{
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Semantics(
              child: FlutterLogo(size: 100),
              label: 'This is a small Flutter logo',
            ),
            SizedBox(height: 20),
            Semantics(
              child: TextField(),
              label: 'This is a large Flutter logo',
            ),
          ],
        ),
      ),
    );
  }
}