import 'package:flutter/cupertino.dart';

class CupertinoTextFieldDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CupertinoTextFieldDemo();
  }
  
}
class _CupertinoTextFieldDemo extends State<CupertinoTextFieldDemo>
{
  final TextEditingController  textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home:CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemOrange,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: CupertinoTextField(),
        ),
      )
    );
  }
  
}