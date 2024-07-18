import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageScaffoldDemo2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return CupertinoPageScaffold(
     child:Center(
        child: CupertinoButton(
          child: Text("click me"),
          onPressed: (){
            showCupertinoModalPopup(context: context,
                builder:  (BuildContext context)
            {
              return  CupertinoPopupSurface(
                child: Container(
               color: CupertinoColors.white,
               alignment: Alignment.center,
               width: double.infinity,
               height: 400,
                  child: Center(
                    child: CupertinoButton(
                      child: Text('Close'),
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
              );
            });
          },
        ),
     )
   );
  }
  
}