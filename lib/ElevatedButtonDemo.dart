import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElevatedButtonDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ElevatedButtonDemo();
  }
  
}
class _ElevatedButtonDemo extends State<ElevatedButtonDemo>
{

  String dropDownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child:  Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: null, child: Text('disabled')),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: (){}, child: Text('disabled')),
            SizedBox(height: 50,),
            ElevatedButton.icon(onPressed: (){},
                icon: Icon(Icons.add),
                label: Text('Add')),
            SizedBox(height: 50,),
            AbsorbPointer(child: ElevatedButton.icon(onPressed: (){},
                icon: Icon(Icons.add),
                label: Text('Add')),
                )
          ],
        ),)
      ),
    ),
    );
  }
  
}