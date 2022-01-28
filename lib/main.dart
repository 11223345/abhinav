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
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            fontFamily: GoogleFonts.lato().fontFamily),
        routes: {
          "/": (context) => LoginPage(),
          Routes.homeRoute: (context) => HomePage(),
          Routes.loginRoute: (context) => LoginPage()
        });
  }
}
