import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ReorderbleListViewDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ReorderbleListViewDemo();
  }

}

class _ReorderbleListViewDemo extends State<ReorderbleListViewDemo> {

  List<int> items = List<int>.generate(30, (int index) => index);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Range Slider Demo'),
      ),
      body: Center(
        child: Container(
          child: ReorderableListView(
            onReorder: (int oldIndex, int newIndex) {
              setState(() {
                // if(oldIndex<newIndex)
                //   {
                //     newIndex -=1;
                //   }
                // int item = items.removeAt(oldIndex);
                // items.insert(newIndex, item);
              });
            },
            children: List.generate(items.length, (index) => ListTile(
              key:Key('$index'),
              title: Text('item $index'),
              trailing: Icon(Icons.drag_handle_sharp),
            )),
          )
        ),
      ),
    );
  }

  }