import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Pages/Drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(buildcontext) {

    return Scaffold(
      appBar: AppBar(title: Text('Catalogue App', style: TextStyle(
        color: Colors.black
      ),),

      ),
      body: Center(
          child: Text(
        "Hello ",
        textScaleFactor: 4,
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      drawer: drawer() ,
    );
  }
}
