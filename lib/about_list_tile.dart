import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class about_list_tile extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _about_list_tile();

}

class _about_list_tile extends State<about_list_tile> {
  @override
  Widget build(BuildContext context) {

    return const Center(
      child: AboutListTile(icon: Icon(Icons.info),
        applicationLegalese: 'Legease',
        applicationName: 'About dialogue example',
        applicationVersion: 'Version 1.0.0',
        applicationIcon: FlutterLogo(),
        aboutBoxChildren : [
          Text('This is a text creted by   Flutter mapp')
        ],),
    );
  }
}