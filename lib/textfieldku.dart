import 'package:flutter/material.dart';

class TextFieldku extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final String controler;
  TextFieldku({this.hintText, this.obscureText, this.controler});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(color: Colors.black, offset: Offset(2.0, 2.0))
          ]),
      child: TextField(
        controller: null,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: "$hintText",
            fillColor: Colors.white,
            filled: true,
            border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
