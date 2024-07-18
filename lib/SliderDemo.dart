import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _SliderDemo();

}

class _SliderDemo extends State<SliderDemo> {

  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          child: Column(
            children: [
          Slider(value: _currentSliderValue,
            max: 100,
            divisions: 10,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value){
            setState(() {
              _currentSliderValue = value;
            });
            },

          )
            ],
          ),
        )
      ),
    );
  }
}