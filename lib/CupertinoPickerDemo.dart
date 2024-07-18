import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPickerDemo extends StatelessWidget{
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: CupertinoButton.filled(child: Text('value $selectedValue'),
          onPressed: ()=>
              showCupertinoModalPopup(context: context, builder: (_)=>SizedBox(
                width: double.infinity,
                height: 250,
                child: CupertinoPicker(
                  backgroundColor: Colors.white,
                  itemExtent: 30,
                  scrollController: FixedExtentScrollController(
                    initialItem: 1
                  ),
                  children: [],
                  onSelectedItemChanged: (int value){

                  },
                ),
              ))
            ,),
        ),
      ),
    );
  }
  
}