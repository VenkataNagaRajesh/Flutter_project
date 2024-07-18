import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSegmentedControlDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CupertinoSegmentedControlDemoState();
  }
}

class _CupertinoSegmentedControlDemoState extends State<CupertinoSegmentedControlDemo> {
  String? _currentState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino Segmented Control Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            CupertinoSegmentedControl(
              children: {
                "Flutter": Container(
                  alignment: Alignment.center,
                  color: _currentState == "Flutter" ? Colors.orange : Colors.white,
                  padding: EdgeInsets.all(8),
                  child: Text("Flutter"),
                ),
                "Mapp": Container(
                  alignment: Alignment.center,
                  color: _currentState == "Mapp" ? Colors.blue : Colors.white,
                  padding: EdgeInsets.all(8),
                  child: Text("Mapp"),
                ),
                "Youtube": Container(
                  alignment: Alignment.center,
                  color: _currentState == "Youtube" ? Colors.red : Colors.white,
                  padding: EdgeInsets.all(8),
                  child: Text("Youtube"),
                ),
              },
              onValueChanged: (String? value) {
                setState(() {
                  _currentState = value;
                });
              },
              groupValue: _currentState,
            ),
            SizedBox(height: 20),
            _currentState != null
                ? Text(
              "Selected: $_currentState",
              style: TextStyle(fontSize: 18),
            )
                : Container(),
          ],
        ),
      ),
    );
  }
}
