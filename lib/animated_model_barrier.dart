import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedModalBarrierDemo  extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _animated_model_barrier_demo();

}

class _animated_model_barrier_demo  extends State<AnimatedModalBarrierDemo > with SingleTickerProviderStateMixin{
  bool _isPressed = false;
  late Widget _animatedModalBarrier;
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState(){
    _animationController = AnimationController(vsync: this,duration: Duration(seconds: 3));

    ColorTween _colorTween = ColorTween(
      begin: Colors.orangeAccent.withOpacity(0.5),
      end: Colors.blueGrey.withOpacity(0.5)
    );

    _colorAnimation = _colorTween.animate(_animationController);
    _animatedModalBarrier  = AnimatedModalBarrier(color: _colorAnimation,dismissible: true,);

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
              child: Center(
                child: Padding(
               padding: EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                          SizedBox(height: 100,width: 200,
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              ElevatedButton(onPressed: (){
                                setState(() {
                                  _isPressed:true;
                                  print(_isPressed);
                                });
                                _animationController.reset();
                                _animationController.forward();
                                Future.delayed(Duration(seconds: 3),(){
                                  setState(() {
                                    _isPressed = false;
                                  });
                                });
                              }, child:
                              Text('Press'),
                              style: ElevatedButton.styleFrom(primary: Colors.orangeAccent)),
                              if(_isPressed)_animatedModalBarrier,
                            ],
                          ),),

                    ],
                  ),
                ),
              )
            )

        )
    );
  }

}