import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 103, 27, 243);
const List<Color> _colorThemes = [
  _customColor,
  Colors.red,
  Colors.lightGreen,
  Colors.blue,
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            'Invalid color index');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
