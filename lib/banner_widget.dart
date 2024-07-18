import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class banner_widget_demo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _banner_widget_demo();

}

class _banner_widget_demo  extends State<banner_widget_demo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: Container(
          margin: EdgeInsets.all(90.0),
          child:ClipRect(child:Banner(
        location:   BannerLocation.topEnd,
        message: "get 25% off",
        color: Colors.red,
        child:
      Center(
        child: Container(
          color:Colors.blueGrey,
          child: Padding(
            padding:EdgeInsets.fromLTRB(10, 20,10,20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [Image.network("https://www.excelptp.com/wp-content/uploads/2023/03/Flutter-Development-Course.jpg"),
              SizedBox(height: 10 ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Flutter course',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
                      onPressed: (){

                  }, child: Text("Get Now"))
                ],
              )],
            )),
          ),
      )
        ),
      ))
      ),
    );
  }

}