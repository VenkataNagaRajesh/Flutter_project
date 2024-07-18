import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class about_dialogue  extends StatefulWidget{
  @override
  State<StatefulWidget> createState()
   => _about_dialogue();

}

class _about_dialogue extends State<about_dialogue> {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(appBar:
       AppBar(title: Text('about dialogue'),),
     body:  Container(child: Center(
       child: ElevatedButton(
         child: Text('Show about dialogue'),
         onPressed: (){
           showDialog(context: context, builder: (context)=>AboutDialog(applicationIcon: FlutterLogo(),
             applicationLegalese: 'Legease',
             applicationName: 'About dialogue example',
             applicationVersion: 'Version 1.0.0',
             children: [
               Text('This is a text creted by   Flutter mapp')
             ],
           ));
         },
       ),
     ),),),
   );
  }

}