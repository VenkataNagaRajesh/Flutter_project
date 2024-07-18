import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RawChipDemo extends StatefulWidget {
  @override
  _RawChipDemoState createState() => _RawChipDemoState();
}

class _RawChipDemoState extends State<RawChipDemo> {
  List<String> selectedChips = [];

  List<String> availableOptions = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RawChip Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: 8.0,
              children: availableOptions.map((option) {
                return RawChip(
                  label: Text(option),
                  selected: selectedChips.contains(option),
                  onSelected: (isSelected) {
                    setState(() {
                      if (isSelected) {
                        selectedChips.add(option);
                      } else {
                        selectedChips.remove(option);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text('Selected Chips: ${selectedChips.join(', ')}'),
          ],
        ),
      ),
    );
  }
}