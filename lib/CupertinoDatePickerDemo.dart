import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDatepickerDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return _CupertinoDatePickerDemo();
  }

}
class _CupertinoDatePickerDemo extends State<CupertinoDatepickerDemo>
{
  DateTime dateTime  = DateTime(3000,2,1,10,20,12);
  @override
  Widget build(BuildContext context) {
 return CupertinoContextMenuAction(child: Center(
   child: CupertinoButton(
     onPressed: () {
       showCupertinoModalPopup(context: context,
           builder: (BuildContext cotext) => SizedBox(
             height: 250,
             child: CupertinoDatePicker(
               backgroundColor: Colors.white,
               onDateTimeChanged: (DateTime newDateTime){
                 setState(() {
                   dateTime= newDateTime;
                 },
                 );
               },
               //to get the 24 hours time format
use24hFormat: true,
               //if do you want to get only date or only time you can use this below
               mode: CupertinoDatePickerMode.date,
             ),
           ));
     },
     child: Text("Click me"),
   ),
 ));
  }

}