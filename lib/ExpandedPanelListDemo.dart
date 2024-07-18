import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Item{
  Item({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,

});

  String headerText,expandedText;
  bool isExpanded;
}


class ExpandedPanelListDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ExpandedPanelListDemo();
  }
  
}
class _ExpandedPanelListDemo extends State<ExpandedPanelListDemo>
{
  List<Item> data = List<Item>.generate(10, (index) =>
      Item(headerText: "Item $index",
          expandedText: "This is item number $index",
  ));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Center(
       child: Container(
         child: SingleChildScrollView(
           child: ExpansionPanelList(
             expansionCallback: (int index,bool isExpanded){
               setState(() {
                 data[index].isExpanded = !isExpanded;
               });
             },
            children: data.map<ExpansionPanel>((Item item){
              return ExpansionPanel(headerBuilder: (BuildContext context,bool isExpanded){
                return ListTile(
                  title: Text(item.headerText)
                );
              }, body: ListTile(
                title: Text(item.expandedText),
                subtitle: Text("To delete this item, click trash icon"),
                trailing: Icon(
                    Icons.delete,
                  color:Colors.orangeAccent,
                ),
                onTap: (){
                  setState(() {
                    data.remove(item);
                  });
                },
              ),
                isExpanded: item.isExpanded
              );
            }).toList(),
           ),
         )
         ),
      ),
    );
  }
  
}