import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickerDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DatePickerDemo();
  }
  
}
class _DatePickerDemo extends State<DatePickerDemo>
{
  DateTime selecteDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
                Text("${selecteDate.year}:${selecteDate.month}-${selecteDate.day}"),
          SizedBox(height: 100,),
          ElevatedButton(onPressed: ()async{
            final DateTime? dateTime = await showDatePicker(context: context,
                initialDate: selecteDate,
                firstDate: DateTime(2000),
                lastDate: DateTime(3000));
            if(dateTime!=null)
              {
                setState(() {
                  selecteDate = dateTime;
                });
              }
          }, child: Text("Choose date"))
        ],
      ),
    );
  }
  
}