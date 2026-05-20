import 'package:flutter/material.dart';

const colorList = <Color>[
  Color(0xFFB71C1C), // Red
  Color(0xFF1B5E20), // Green
  Color(0xFF0D47A1), // Blue
  Color(0xFFF57F17), // Yellow
  Color(0xFF4A148C), // Purple
];

class AppTheme {

  final int selectColor;

  AppTheme({
    this.selectColor = 0,
  })  : assert(
          selectColor >= 0,
          'Select Color must be greater than 0',
        ),
        assert(
          selectColor < colorList.length,
          'Select Color must be less than ${colorList.length}',
        );

  ThemeData getTheme() => ThemeData(
        colorSchemeSeed: colorList[selectColor],
        useMaterial3: true,
      );
}