import 'package:category_tutorial/models/category_content.dart';
import 'package:flutter/material.dart';

import 'category.dart';

class CategoryRoute extends StatelessWidget {
  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  static const _icons = <IconData>[
    Icons.favorite,
    Icons.cake,
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.account_tree,
    Icons.android,
    Icons.wysiwyg,
    Icons.animation,
  ];

  Widget _buildCategoryWidgets(List<CategoryContent> contents) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        var content = contents[index];
        return Category(
          content: content,
        );
      },
      itemCount: contents.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    final contents = <CategoryContent>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      contents.add(
        CategoryContent(_categoryNames[i], _baseColors[i], _icons[i]),
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Unit Converter',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: _buildCategoryWidgets(contents),
      ),
    );
  }
}
