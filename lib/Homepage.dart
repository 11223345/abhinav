import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext) {

    return Scaffold(
      appBar: AppBar(title: Text('Catalogue App'),),
      body: Center(
          child: Text(
        "Hello ",
        textScaleFactor: 4,
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      drawer: Drawer() ,
    );
  }
}
