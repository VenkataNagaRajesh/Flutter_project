import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NotificationListenerDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _NotificationListenerDemo();
  }

}
class _NotificationListenerDemo extends State<NotificationListenerDemo>
{

  String message = 'new';

  @override
  Widget build(BuildContext context) {
    print(message);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                height: 60,
                  color:Colors.orangeAccent,
                child: Center(
                  child: Text(message),
                ),
              ),
              Expanded(child: NotificationListener<ScrollNotification>(
                onNotification: (scrollNotification){
                  if(scrollNotification is ScrollStartNotification) {
                    setState(() {
                      message = 'Scroll statrted';
                      print(message);
                    });
                  }
                  else if( scrollNotification is ScrollUpdateNotification)
                    {
                      setState(() {
                        message = 'scroll updated';
                      });
                    }
                  else if (scrollNotification is ScrollEndNotification)
                    {
                      setState(() {
                        message = 'Scroll ended';
                      });
                    }
                  return true;
                },
                child: ListView.builder(itemBuilder: (context,index){
                  return ListTile(
                    title: Text('hello $index'),
                  );
                },
                  itemCount: 40,
                ),
              ))
            ],
          ),
        )
      ),
    );
  }

}