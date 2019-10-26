import 'package:csat/appbarku.dart';
import 'package:csat/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Appbarku(
          home: Icons.hotel,
          search: Icons.search,
          setting: Icons.image,
          tittle: "home",
        ),
      ),
    );
  }
}
