import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageScaffoldDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return CupertinoApp(
     debugShowCheckedModeBanner: false,
     theme: CupertinoThemeData(
       brightness: Brightness.dark,
       scaffoldBackgroundColor: Color.fromRGBO(2, 18, 32, 37),
         primaryColor: CupertinoColors.systemOrange
     ),
     home: CupertinoPageScaffold(
       navigationBar: CupertinoNavigationBar(
         middle: Text('Flutte App'),
       ),
         child: Center(
           child:CupertinoButton(
             color:Colors.white,
             child: Text("Click me"),
             onPressed: (){
          showCupertinoModalPopup(context: context,
              builder: (BuildContext context)=>CupertinoActionSheet(
                title: Text('Flutter mapp'),
                message: Text('hello world'),
                actions: <CupertinoActionSheetAction>[
                  CupertinoActionSheetAction(onPressed: () {
                    Navigator.pop(context);
                  }, child: Text('Do something'),)],
              ));
             },
           ),
         ),
     )
   );
  }
}
