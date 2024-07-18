import 'package:all_widgets/builder_demo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RawAutoCompleteTextEditorDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RawAutoCompleteTextEditorDemo();
  }
  
}
Color color = Colors.orangeAccent;
class _RawAutoCompleteTextEditorDemo extends State<RawAutoCompleteTextEditorDemo>
{

  List<String> fruits = ['Apple','Banana','custurd apple','Darwin','Eplle'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('OverFlowBarDemo'),),
        body: Container(
          child: Center(
            child: Column(children: [
              RawAutocomplete<String>(
                  optionsBuilder: (TextEditingValue textEditionValue){
                    return fruits.where((String item){
                      return item.toLowerCase().contains(textEditionValue.text.toLowerCase());
                    }).toList();
                  },
                  fieldViewBuilder: (BuildContext context,
                  TextEditingController textEditingController,
                  FocusNode foucsNode,
                  VoidCallback onFielSubmitted)
                  {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: textEditingController,
                          focusNode: foucsNode,
                        ),
                      );
                  },
                  optionsViewBuilder:(
                  BuildContext context,
                      AutocompleteOnSelected<String> onSelected,
                      Iterable<String> options
                  ){
                    return Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.all(9.0),
                        child: Material(
                          elevation: 4.0,
                          child: SizedBox(
                            height: 200,
                            child: ListView.builder(
                                itemBuilder: (BuildContext context,int index)
                            {
                              final String option = options.elementAt(index);
                              return GestureDetector(
                                onTap: (){
                                  onSelected(option);
                                },
                                child: ListTile(
                                  title: Text(option),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    );
                  }


              )

          ]),
        )
      ),
      ));
  }

}