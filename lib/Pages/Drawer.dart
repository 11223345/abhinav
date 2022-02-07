import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Pages/Routes.dart';
import '';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 25,
          ),
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                margin: EdgeInsets.zero,
                accountName: Text("Kumar Abhinav"),
                accountEmail: Text("Kumarabhinav2069@gmail.com"),
                currentAccountPicture:
                    Image.asset("Assets/undraw_Fingerprint_re_uf3f.png"),
              )),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text(
              "Home",textScaleFactor: 1.3,
              textAlign: TextAlign.left,
              style: TextStyle(),
            ),
            tileColor: Colors.deepPurple,
          ),
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text(
              "User", textScaleFactor: 1.3,
              textAlign: TextAlign.left,
              style: TextStyle(),
            ),
            tileColor: Colors.deepPurple,
          ),
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.add),
            title: Text(
              "Add",textScaleFactor: 1.3,
              textAlign: TextAlign.left,
              style: TextStyle(),
            ),
            tileColor: Colors.deepPurple,
          )
        ],
      ),
    );
  }
}
