import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterChipDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FilterChipDemo();
  }

}
class _FilterChipDemo extends State<FilterChipDemo>
{
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: FilterChip(
          label: Text('Filter Chip'),
          selected: isSelected,
          onSelected: (bool value) {
            setState(() {
              isSelected = !isSelected;
            });
          },
        )
      ),
    ),
    );
  }

}