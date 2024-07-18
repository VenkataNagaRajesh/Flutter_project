import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShaderMaskDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _ShaderMaskDemo();

}

class _ShaderMaskDemo   extends State<ShaderMaskDemo>{
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          color: Colors.white, // Background color of the container
          child: Center(
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return RadialGradient(
                  center: Alignment.topRight,
                  radius: 4.0,
                  colors: [
                    Colors.orangeAccent,
                    Colors.redAccent,
                  ],
                ).createShader(bounds);
              },
              child: Text(
                'This is a cool looking text',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
        ),
      ),
    );
  }
}