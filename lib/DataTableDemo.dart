import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataTableDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DataTableDemo();
  }
}

class _DataTableDemo extends State<DataTableDemo> {
  TextStyle titles = TextStyle(
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: [
      DataColumn(
          label: Text(
        'Name',
        style: titles,
      )),
      DataColumn(
          label: Text(
        'Age',
        style: titles,
      )),
      DataColumn(
          label: Text(
        'Color',
        style: titles,
      ))
    ], rows: <DataRow>[
      DataRow(cells: <DataCell>[
        DataCell(Text('Max')),
        DataCell(Text('21')),
        DataCell(Text('Red'))
      ]),
      DataRow(cells: <DataCell>[
        DataCell(Text('Min')),
        DataCell(Text('2')),
        DataCell(Text('orange'))
      ]),
      DataRow(cells: <DataCell>[
        DataCell(Text('Medium')),
        DataCell(Text('10')),
        DataCell(Text('blue'))
      ])
    ]);
  }
}
