import 'package:flutter/cupertino.dart';

class CupertinoSlider_demo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return _CupertinoSlider_demo();
  }
}

class _CupertinoSlider_demo extends State<CupertinoSlider_demo>
{
  double _currentValue = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
          child: Column(
            children: [const SizedBox(height: 50,),
            Text(_currentValue.toString()),
            SizedBox(height: 50,),
            CupertinoSlider(
              value: _currentValue,
              min:0,
              max:100,
              divisions: 10,
                onChanged: (double selectedValue){
                 setState(() {
                   _currentValue = selectedValue;
                 });
                }
                ,
            )],
          ),
    );
  }

}