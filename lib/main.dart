import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Pages/LoginPage.dart';
import 'Homepage.dart';

import 'Pages/Routes.dart';

void main() {
  runApp(My());
}

class My extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.white,
        theme: ThemeData(appBarTheme: AppBarTheme(
          backgroundColor: Colors.white38,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black)
        ),
            textTheme: Theme.of(context).textTheme,
            primarySwatch: Colors.deepPurple,
            fontFamily: GoogleFonts.lato().fontFamily),
        routes: {
          "/": (context) => HomePage(),
          Routes.homeRoute: (context) => HomePage(),
          Routes.loginRoute: (context) => LoginPage()
        });
  }
}
