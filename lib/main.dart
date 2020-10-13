import 'package:flutter/material.dart';
import 'ui/category.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Category Tutorial"),
        ),
        body: Category(),
      ),
    ),
  );
}
