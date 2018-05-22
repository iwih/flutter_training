import "package:flutter/material.dart";
import "package:flutter_app/category_route.dart";

const Color _backColor = Colors.green;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Unit Convertor",
    home: CategoryRoute(
        _backColor),
  ));
}
