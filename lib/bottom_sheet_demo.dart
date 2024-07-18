import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom_Sheet_Demo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()  => _bottom_Sheet_Demo ();

}

class _bottom_Sheet_Demo  extends State<Bottom_Sheet_Demo>{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       body: Center(
         child: ElevatedButton(child: Text("Modal Bottom Sheet"),
         onPressed: (){
           showModalBottomSheet(context: context, builder:
           (BuildContext context){
             return SizedBox(
               height: 400,
               child: Center(child: ElevatedButton(
                 child: Text('Close'),
                 onPressed: (){
                   Navigator.pop(context);
                 },
               ),),
             );
           });
         },
         ),
       )
     ),
   );
  }

}