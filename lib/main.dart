import "package:flutter/material.dart";
import "package:flutter_app/category.dart";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "TestApp",
    home: Scaffold(
      appBar: AppBar(title: Text("TestApp")),
      body: Category(null, "test cat.", Colors.deepOrangeAccent),
    ),
  ));
}

