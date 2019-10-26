
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginku extends StatefulWidget {
  final String text;
  final Function function;

  Loginku({this.text, this.function});

  @override
  _LoginkuState createState() => _LoginkuState();
}

class _LoginkuState extends State<Loginku> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(color: Colors.black, offset: Offset(2.0, 2.0))],
          gradient: LinearGradient(colors: [
            Colors.red,
            Colors.purple,
          ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
      child: FlatButton(
        onPressed: (){},
        child: Text(
          widget.text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
