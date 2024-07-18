import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateRangePickerDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DateRangePickerDemo();
  }
  
}
class _DateRangePickerDemo extends State<DateRangePickerDemo>
{
  DateTimeRange selectedDates = DateTimeRange(start: DateTime.now(), end: DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         Text("${selectedDates.duration.inDays}"),
          Text("${selectedDates.start} -  ${selectedDates.end}"),
          SizedBox(height: 100,),
          ElevatedButton(
            child: Text("choose Dates"),
            onPressed: ()async {
              final DateTimeRange? dateTimeRange = await showDateRangePicker
                (context: context, firstDate: DateTime(2000), lastDate: DateTime(3000));
              if(dateTimeRange!=null){
                setState(() {
                  selectedDates = dateTimeRange;
                });
              }
            }
          )
        ],
      ),
    );
  }
  
}