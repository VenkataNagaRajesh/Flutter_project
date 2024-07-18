import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animated_list_demo extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _animated_list_demo();

}

class _animated_list_demo  extends State<animated_list_demo>{
  bool selected = false;
  final _items = [];
  final GlobalKey<AnimatedListState> key = GlobalKey();


  void _addItem(){
    _items.insert(0,"ITem ${_items.length+1}");
    key.currentState!.insertItem(0,
    duration: Duration(seconds: 1));
  }

  void _removeItem(int index){
    key.currentState!.removeItem(index,
        (_,animation){
      return SizeTransition(sizeFactor: animation,
      child: Card(
        margin: EdgeInsets.all(10),
        color: Colors.red,
        child: ListTile(
          title: Text("Deleted",
            style: TextStyle(fontSize: 24),
          ),

        ),
      ),);
        },
    duration: Duration(milliseconds: 300));
    _items.removeAt(index);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
              child: Column(
                children: [SizedBox(height: 10,),
                IconButton(onPressed: (){
                  _addItem();
                }, icon: Icon(Icons.add)),
                Expanded(child: AnimatedList(
                  key:key,
                  initialItemCount: 0,
                  padding: EdgeInsets.all(20),
                  itemBuilder:
                      (BuildContext context, int index,
                      Animation<double> animation) { return SizeTransition(
                        key:UniqueKey(),
                          sizeFactor: animation,
                      child: Card(
                        margin: EdgeInsets.all(10),
                        child: ListTile(
                          title: Text(_items[index]),
                       trailing: IconButton(icon:Icon(
                         Icons.delete,
                       ),
                       onPressed: (){
                         _removeItem(index);
                       },),
                        ),
                      ),); },

                ),

                )],
              ),
            )

        )
    );
  }

}