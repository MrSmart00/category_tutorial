import 'package:category_tutorial/models/category_content.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final CategoryContent content;

  const Category({
    Key key,
    @required this.content,
  })  : assert(content != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = 100.0;

    return Material(
      color: Colors.transparent,
      child: Center(
        child: Container(
          padding: EdgeInsets.all(8.0),
          height: _height,
          child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(_height / 2)),
            highlightColor: content.color,
            splashColor: content.color,
            onTap: () {
              print("I was tapped!");
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Icon(
                      content.iconData,
                      size: 60.0,
                    ),
                  ),
                  Text(
                    content.text,
                    style: TextStyle(fontSize: 24),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
