import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormKeyDemo extends StatelessWidget{

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(title: Text('FlotingActionButton Demo'),),
       body: Container(
         child: Padding(padding: EdgeInsets.all(20.0),
         child: Form(
           key:_formkey,
         child:Column(
           children: [TextFormField(
             validator: (value){
                if(value==null || value.isEmpty){
                  return 'Enter the data';
                }
                else{
                  return null;
                }
             },
           ),
             TextFormField(
               validator: (value){
                 if(value==null || value.isEmpty){
                   return 'Enter the data';
                 }
                 else{
                   return null;
                 }
               },
             ),
             ElevatedButton(onPressed: (){
               if(_formkey.currentState!.validate())
                 {
                   ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(
                      content: Text('Great')
                     )
                   );
                 }
             }, child: Text('sumbit'))

           ],
         ),),
       ),
  )));
  }
}
