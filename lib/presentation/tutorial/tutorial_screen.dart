import 'package:flutter/material.dart';

class TutorialScreen extends StatelessWidget {
  static const String name = 'tutorial-screen';

  const TutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial'),
      ),
      body: Placeholder(),
    );
  }
}