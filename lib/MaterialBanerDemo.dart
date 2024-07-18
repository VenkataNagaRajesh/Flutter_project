import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MaterialBanerDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MaterialBanerDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _MaterialBanerDemo extends State<MaterialBanerDemo>
{
//its not working.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: Center(child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showMaterialBanner(
              MaterialBanner(
                content: Text('Subscribed'),
                backgroundColor: Colors.black26,
                padding: EdgeInsets.all(20),
                actions: [
                  TextButton(
                    child: Text('OK'),
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                    },
                  ),
                ],
              ),
            );
          },
          child: Text('Open Baner'),
        ),

        ),
      ),
    );
  }

}