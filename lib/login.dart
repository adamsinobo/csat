

import 'package:csat/buttonku.dart';
import 'package:csat/textfieldku.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.greenAccent,
            Colors.green,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(5.0, 5.0),
                      )
                    ],
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("img/logo.png"),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldku(
              controler: "username",
              obscureText: false,
              hintText: "Username",
            ),
            SizedBox(
              height: 16,
            ),
            TextFieldku(
              controler: "username",
              obscureText: true,
              hintText: "Password",
            ),
            SizedBox(
              height: 18,
            ),
            Loginku(
              text: "Sign In",
            ),
          ],
        ),
      ),
    );
  }
}
