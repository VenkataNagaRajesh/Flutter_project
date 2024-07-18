import 'package:flutter/cupertino.dart';

class CupertinoSlidingSegmentControlDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CupertinoSlidingSegmentControlDemo();
  }
  
}
class _CupertinoSlidingSegmentControlDemo extends State<CupertinoSlidingSegmentControlDemo>
{
  int? sliding = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
  child: CupertinoSlidingSegmentedControl(
    onValueChanged: (int? value) {
      setState(() {
        sliding = value;
      });
    },
    children: {
      0:Text('Text 0'),
      1:Text('Text 1'),
      2:Text('Text 3'),
    },
    groupValue: sliding,

  ),
    );
  }
  
}