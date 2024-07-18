import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _StepperDemo();

}

class _StepperDemo extends State<StepperDemo> {

  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          child:Container(
              child: Stepper(
                steps: [
                  Step(
                    isActive: _currentStep==0,
                    title:Text('Step 1'),
                    content: Text('Information for step 1',
                    style: TextStyle(color:Colors.redAccent),),
                  ),
                  Step(
                    isActive: _currentStep==1,
                    title:Text('Step 2'),
                    content: Text('Information for step 2',
                      style: TextStyle(color:Colors.orangeAccent),),
                  ), Step(
                    isActive: _currentStep==2,
                    title:Text('Step 3'),
                    content: Text('Information for step 3',
                      style: TextStyle(color:Colors.blueAccent),),
                  ),
                  Step(
                    isActive: _currentStep==3,
                    title:Text('Step 4'),
                    content: Text('Information for step 4',
                      style: TextStyle(color:Colors.blueAccent),),
                  ),
                  Step(
                    isActive: _currentStep==4,
                    title:Text('Step 4'),
                    content: Text('Information for step 5',
                      style: TextStyle(color:Colors.blueAccent),),
                  ),
                ].toList(),
                onStepTapped: (int newIndex){
                  setState(() {
                    _currentStep = newIndex;
                  });
                },
                currentStep: _currentStep,
                onStepContinue: (){
                  setState(() {
                    if(_currentStep ==0)
                      {
                        setState(() {
                          print(_currentStep);
                          _currentStep +=1;
                        });
                      }
                  });
                },
                onStepCancel: (){
                  if(_currentStep!=0){
                    setState(() {
                      print(_currentStep);
                      _currentStep -= 1;
                    });
                  }
                },

              ),
          )
        )
      ),
    );
  }
}