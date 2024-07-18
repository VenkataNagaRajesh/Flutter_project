import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlowDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FlowDemo();
  }
}

class _FlowDemo extends State<FlowDemo> with SingleTickerProviderStateMixin
{
  late AnimationController menuAnimation;
  IconData lastIconClicked = Icons.notifications;

  final List<IconData> menuItems = <IconData>[
    Icons.home,
    Icons.new_releases,
    Icons.notifications,
    Icons.settings,
    Icons.menu
  ];

  @override
  void initState() {
   menuAnimation = AnimationController(vsync: this,duration: Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       body: Container(
         child: Flow(
           delegate: FlowMenuDelegate(menuAnimation:menuAnimation),
           children: menuItems.map<Widget>((IconData icon)=>Padding(
             padding: EdgeInsets.all(50.0),
             child: FloatingActionButton(
               backgroundColor: lastIconClicked == icon?Colors.orangeAccent:Colors.grey,
               onPressed: (){
                 if(icon!=Icons.menu)
                 {
                   setState(() {
                     lastIconClicked=icon;
                   });
                 }
                 menuAnimation.status == AnimationStatus.completed
                     ? menuAnimation.reverse()
                     : menuAnimation.forward();
               },
               child: Icon(icon),
             ),
           )).toList(),
         )
       ),
     ),
   );
     }
}

class FlowMenuDelegate extends FlowDelegate{

  Animation<double> menuAnimation;
  FlowMenuDelegate({required this.menuAnimation}):super(repaint: menuAnimation);
  @override
  void paintChildren(FlowPaintingContext context) {
  double dx=0.0;
  for(int i=0;i<context.childCount;i++) {
    dx = context.getChildSize(i)!.width*i;
    context.paintChild(i,
    transform: Matrix4.translationValues(dx * menuAnimation.value, 0, 0));
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
   
  
  
}
