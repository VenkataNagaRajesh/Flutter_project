import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class autoComplete_textview_demo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _autoComplete_textview_demo();

}

class _autoComplete_textview_demo extends State<autoComplete_textview_demo> {
  int count = 0;
  List<String> fruits = ['apple', 'banana', 'mango', 'melon'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: Text('Animated Switcher Demo'),
    ),
    body: Center(
    child: Autocomplete<String>(optionsBuilder: (TextEditingValue textEditingValue){
    if(textEditingValue ==''){
    return Iterable<String>.empty();
    }
    return fruits.where((element) => element.contains(textEditingValue.text.toString()));
    },
    fieldViewBuilder: (BuildContext context, TextEditingController textEditingController, FocusNode focusNode, VoidCallback onFieldSubmitted) {
      return TextFormField(
        controller: textEditingController,
        focusNode: focusNode,
        decoration: InputDecoration(
          labelText: 'Select a fruit',
          border: OutlineInputBorder(),
        ),
      );
    })
    ),
    ),
    );
    }
  }