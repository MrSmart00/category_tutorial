import 'package:category_tutorial/models/unit.dart';
import 'package:flutter/material.dart';

class ConverterRoute extends StatelessWidget {
  final List<Unit> units;

  const ConverterRoute({
    @required this.units,
  }) : assert(units != null);

  @override
  Widget build(BuildContext context) {
    final unitWidgets = units.map((Unit unit) {
      return Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              "Conversion: ${unit.conversion}",
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}
