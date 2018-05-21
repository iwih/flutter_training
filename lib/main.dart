import "package:flutter/material.dart";
import "package:flutter_app/category.dart";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "TestApp",
    home: Scaffold(
      appBar: AppBar(title: Text("TestApp")),
      body: Column(children: <Widget>[
        Category(Icon(Icons.add_alarm), "FIRST CAT", Colors.deepOrangeAccent),
        Category(Icon(Icons.ac_unit), "SECOND CAT", Colors.deepOrangeAccent)
      ]),
    ),
  ));
}
