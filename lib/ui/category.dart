import 'package:flutter/material.dart';

class Category extends StatelessWidget {
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
            highlightColor: Colors.deepOrange,
            splashColor: Colors.cyanAccent,
            onTap: () {
              print("I was tapped!");
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.cake,
                    size: 60.0,
                  ),
                ),
                Text(
                  "Cake!",
                  style: TextStyle(fontSize: 24),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
