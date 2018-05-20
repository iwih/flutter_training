import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Icon _icon;
  String _text;
  double _height;
  Color _color;

  Category(Icon icon, String text, Color color, [double height = 100.0]) {
    _icon = icon;
    _text = text;
    _color = color;
    _height = height;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        highlightColor: _color,
        splashColor: Colors.lightBlueAccent,
        borderRadius: BorderRadius.all( Radius.circular(_height / 2)),
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 16.0, left: 16.0),
              child: _icon == null ? Icon(Icons.question_answer) : _icon,
            ),
            Center(
              child: Text(
                _text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onTap() {
    print("Category tapped");
  }
}
