import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimePickerDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _TimePickerDemo();
  }
  
}
class _TimePickerDemo extends State<TimePickerDemo>
{
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("${selectedTime.hour}:${selectedTime.minute}"),
          ElevatedButton(onPressed: ()async{
            TimeOfDay? timeOfDay = await showTimePicker(context: context,
                initialTime: selectedTime,
               initialEntryMode: TimePickerEntryMode.dial
            );
if(timeOfDay != null)
  {
    setState(() {
      selectedTime = timeOfDay;
    });
  }
          },
              child: Text("Choose time "))
        ],
      ),
    );
  }
  
}