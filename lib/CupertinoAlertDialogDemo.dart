import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoButton(
        onPressed: (){
          showCupertinoDialog(context: context,
              builder: (BuildContext context)=> CupertinoAlertDialog(
                title: Text("Alert"),
                content:Text('Are you subscribe to Flutter MApp'),
                actions: <CupertinoDialogAction>[
                  CupertinoDialogAction(child: Text('No'),
                  isDestructiveAction: true,
                  onPressed: (){
                  Navigator.pop(context);
                  }
                  ),
                  CupertinoDialogAction(child: Text('Yes'),
                  isDestructiveAction: false,
                  onPressed: (){
                    Navigator.pop(context);
                  },)

                ],
              ));
        },
        child: Text('Cupertino Alert Dialog'),
      )
    ));
  }
}
