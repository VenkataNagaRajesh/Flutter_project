import 'package:flutter/cupertino.dart';

class CupertinoButtonDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CupertinoButton(child: Text("Enabled"), onPressed: (){
             
          }),
          SizedBox(height: 30,),
          CupertinoButton.filled(child: Text("Enabled"), onPressed: (){})
        ],
      ),
    );
  }

}