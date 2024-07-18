import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class stack_widget_demo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _stack_widget_demo ();

}

class _stack_widget_demo   extends State<stack_widget_demo>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          SizedBox(
            height: 100,
              width: 200,
            child: ElevatedButton(
              onPressed: (){},
              child: null,
            )
            ,
          ),
          SizedBox(
            height: 200,
            width: 100,
            child: AbsorbPointer(
              child: ElevatedButton(
                onPressed: (){},
                child: null,
                style: ElevatedButton.styleFrom(foregroundColor: Colors.blue.shade200),
              ),
            )
            ,
          )
        ],
      ),
    );
  }

}