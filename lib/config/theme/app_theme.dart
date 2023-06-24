import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF792F8E);

List<Color> _customColorSc = <Color>[
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.purpleAccent[100]!,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.redAccent,
];

class AppTheme {
  int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0 && selectedColor < _customColorSc.length);

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _customColorSc[selectedColor],
    );
  }
}
