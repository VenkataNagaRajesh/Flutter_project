import 'package:all_widgets/SizedBoxDemo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFieldDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _TextFormFieldDemo();

}

class _TextFormFieldDemo extends State<TextFormFieldDemo> {

  List<String> title = [
    '','',''
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
                body:SingleChildScrollView(
                  child: Form(
                    autovalidateMode: AutovalidateMode.always,
                    onChanged: (){
                      setState(() {
                        Form.of(primaryFocus!.context!)!.save();
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(3, (index) =>
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child:Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              onSaved: (String? value){
                                if(value!=null){
                                  title[index]=value;
                                }
                              },
                            ),
                            SizedBox(height: 10,),
                            Card(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(title[index]),
                              ),
                            )
                          ],

                        )
                      )),
                    ),
                  ),
                )
          )

    );
  }
}