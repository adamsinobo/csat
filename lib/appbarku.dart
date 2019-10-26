import 'package:flutter/material.dart';

class Appbarku extends StatefulWidget {
  final IconData home;
  final IconData search;
  final IconData setting;
  final String tittle;

  Appbarku({this.home, this.search, this.setting, this.tittle = ""});
  @override
  _AppbarkuState createState() => _AppbarkuState();
}

class _AppbarkuState extends State<Appbarku> {
  var search = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(top: 22),
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.red,
        Colors.pink,
        Colors.purple,
      ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              widget.home,
              color: Colors.white,
            ),
          ),
          search
              ? Expanded(
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                )
              : Expanded(
                  child: Row(
                    children: <Widget>[
                      Text(
                        widget.tittle.toLowerCase(),
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
          IconButton(
            onPressed: () {
              setState(() {
                search = !search;
                print(search);
              });
            },
            icon: Icon(
              widget.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              widget.setting,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
