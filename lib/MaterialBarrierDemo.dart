import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MaterialBarrierDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MaterialBarrierDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _MaterialBarrierDemo extends State<MaterialBarrierDemo>
{

  bool activated = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: Center(child: Stack(children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  activated = !activated;
                });
              },
              child: Text('Re - activate'),
            ),
          ),
          if(activated)
            Opacity(opacity: 0.4,
            child: ModalBarrier(
              dismissible: true,
              onDismiss: (){
                setState(() {
                  activated = !activated;
                });
              },
              color:Colors.orangeAccent
            ),),
        ],
        ),

    )
      ),
    );
  }

}