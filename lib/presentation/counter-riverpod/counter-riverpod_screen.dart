import 'package:flutter/material.dart';

class CounterRiverpodScreen extends StatelessWidget {
  static const String name = 'counter-riverpod-screen';

  const CounterRiverpodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador Riverpod'),
      ),
      body: Placeholder(),
    );
  }
}