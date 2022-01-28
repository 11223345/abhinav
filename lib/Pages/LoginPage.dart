import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Pages/Routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset(
            "Assets/undraw_Fingerprint_re_uf3f.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    height: 2,
                  ),
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Enter username", labelText: "Username"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changebutton = true;
                    });
                    await Future.delayed(Duration(seconds: 2));
                    Navigator.pushNamed(context, Routes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(changebutton? 50: 8),
                        color: Colors.deepPurple),

                    alignment: Alignment.center,
                    //color: Colors.deepPurple,
                    height: 50,
                    width: changebutton ? 50 : 150,
                    child: changebutton? Icon(Icons.done) : Text(
                      'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white),
                    ),
                  ),
                ),
                /*ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.homeRoute);
                    },
                    child: Text(
                      "Login",
                    ),
                    style: TextButton.styleFrom(minimumSize: Size(150, 50))),*/
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
