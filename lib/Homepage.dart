import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    int a = 3;
    return Scaffold(
      appBar: AppBar(title: Text('Catalogue App'),),
      body: Center(
          child: Text(
        "Hello Ji",
        textScaleFactor: 4,
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      drawer: Drawer() ,
    );
  }
}
