import 'package:flutter/cupertino.dart';

class CupertinoSearchTextFieldDemo extends StatelessWidget{

  final TextEditingController _textController = TextEditingController(text:'Flutter Mapp');

  @override
  Widget build(BuildContext context) {
  return CupertinoPageScaffold(child: Container(
      height: 500,
      width: double.infinity,
      color:CupertinoColors.opaqueSeparator,
      padding: EdgeInsets.all(10),
      child:Center(
        child: CupertinoSearchTextField(
          controller: _textController,
        ),
      )
  ));
  }

}