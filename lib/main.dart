import 'package:flutter/material.dart';
import 'package:untitled/Pages/LoginPage.dart';
import 'Homepage.dart';

void main() {
  runApp(My());
}

class My extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: HomePage(),
        theme:
            ThemeData(brightness: Brightness.light, primarySwatch: Colors.pink),
        //darkTheme: ThemeData(brightness: Brightness.light)
        initialRoute: "/Home",
        routes: {
          "/": (context) => LoginPage(),
          "/Home": (context) => HomePage(),
          "/login": (context) => LoginPage()
        });
  }
}
