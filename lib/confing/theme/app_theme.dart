import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.teal,
  Colors.blue,
  Colors.red,
  Colors.yellow,
  Colors.green,
];

class AppTheme {
  final int selectColor;
  final bool isDarkMode;

  AppTheme({this.selectColor = 0, this.isDarkMode = false})
    : assert(selectColor >= 0, 'Selected Color must be greater than 0'),
      assert(
        selectColor < colorList.length,
        'Selected Color must be less than ${colorList.length}',
      );

  ThemeData getTheme() => ThemeData(
    // useMaterial3: true,
    colorSchemeSeed: colorList[selectColor],
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    appBarTheme: AppBarTheme(centerTitle: true),
  );

  AppTheme copyWith({
    int? selectedColor,
    bool? isDarkMode
    }) => AppTheme(
      selectColor: selectedColor ?? this.selectColor,
      isDarkMode: isDarkMode ?? this.isDarkMode,
  );
}