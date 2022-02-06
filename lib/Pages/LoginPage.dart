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
  String hello = "Aman";
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    movetohome(buildcontext) async {
      if (_formkey.currentState!.validate()|| _formkey.currentState!.validate()) {
        setState(() {
          changebutton = true;
        });
        await Future.delayed(Duration(seconds: 1));
        await Navigator.pushNamed(context, Routes.homeRoute);
        setState(() {
          changebutton = false;
        });
      }
    }

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
            child: Form(
              key: _formkey,
              child: Column(children: [
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username cannot be empty";
                    }
                    else if (value.length< 6){
                      return "Username cannot be less than 6 letters ";
                    }
                    else{
                      return null;
                    }
                  },
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password cannot be empty";
                    }
                    else{
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                Material(
                  borderRadius: BorderRadius.circular(changebutton ? 50 : 8),
                  color: Colors.deepPurple,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () => movetohome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),

                      alignment: Alignment.center,
                      //color: Colors.deepPurple,
                      height: 50,
                      width: changebutton ? 50 : 150,
                      child: changebutton
                          ? Icon(Icons.done)
                          : Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                  color: Colors.white),
                            ),
                    ),
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    ));
  }
}
