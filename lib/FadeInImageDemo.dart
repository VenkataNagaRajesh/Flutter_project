import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FadeInImageDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FadeInImageDemo();
  }
  
}
class _FadeInImageDemo extends State<FadeInImageDemo>
{

  String dropDownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: FadeInImage.assetNetwork(
            placeholder: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXogv6d5cnMN2cxzHlJIoc60FmghtdrPF-cnFu-BBaBIlIHoNdCcQ5ZmVCIZ91na9r0RQ&usqp=CAU',
            image: 'https://img.freepik.com/free-photo/smiley-travelling-woman-holding-camera_23-2148218457.jpg?size=626&ext=jpg&ga=GA1.1.1546980028.1703030400&semt=ais')
      ),
    ),
    );
  }
  
}