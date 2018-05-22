import 'package:flutter/material.dart';
import 'package:flutter_app/category.dart';

class CategoryRoute extends StatelessWidget {
  static const _categories = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency'
  ];

  static const _colors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> catButtons = new List(_categories.length);

    for (var i = 0; i < _categories.length; i++)
      catButtons[i] = new Category(null, _categories[i], _colors[i]);

    final listView = _buildListCategories(catButtons, context);

    final appBar = AppBar(
        title: Text(
          "UNIT CONVERTOR",
        ),
        backgroundColor: _backColor);

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }

  Color _backColor;

  CategoryRoute(Color backColor) {
    _backColor = backColor;
  }

  Widget _buildListCategories(List<Widget> categories, BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape
        ? GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 3.0,
      children: categories,
    )
        : ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }
}
