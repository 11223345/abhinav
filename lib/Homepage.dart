

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Pages/Drawer.dart';
import 'package:untitled/Pages/catalog.dart';
import 'package:untitled/Pages/catalog.dart';

import 'Pages/Item_widget.dart';
import 'Pages/catalog.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(buildcontext) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catalogue App',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(itemCount: Catalogmodels.items.length,
      itemBuilder: (context, index){
        return ItemWidget(item: Catalogmodels.items[index]);
      },
      ),
      drawer: drawer(),
    );
  }
}
