import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RangeSliderDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RangeSliderDemo();
  }

}

class _RangeSliderDemo extends State<RangeSliderDemo> {
  RangeValues values = RangeValues(10, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Range Slider Demo'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RangeSlider(
                values: values,
                labels: labels,
                min:0.1,max:1.0,
                divisions: 100,
                onChanged: (newValues) {
                  setState(() {
                    values = newValues;
                    labels = RangeLabels(
                      newValues.start.toString(),
                      newValues.end.toString(),
                    );
                  });
                },
              ),
              SizedBox(height: 20),
              Text('Range: ${labels.start} - ${labels.end}'),
            ],
          ),
        ),
      ),
    );
  }

  }