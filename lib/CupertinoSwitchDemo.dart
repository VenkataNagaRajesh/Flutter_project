import 'package:flutter/cupertino.dart';

class CupertinoSwitchDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CupertinoSwitchDemo();
  }
  
}
class _CupertinoSwitchDemo extends State<CupertinoSwitchDemo>
{
  bool lights = false;
  @override
  Widget build(BuildContext context) {
    return Center(
child: CupertinoSwitch(
  value: lights,
  onChanged: (bool value){
    setState(() {
      lights = value;
    });
  },
),
    );
  }
  
}