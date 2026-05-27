import 'package:flutter/material.dart';

class ThemeChangerScreen extends StatelessWidget {
  static const String name = 'theme-changer-screen';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambiar Tema'),
      ),
      body: Placeholder(),
    );
  }
}