import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = 'buttons';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Regresar'),
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () => context.pop(),
      ),
      body: const _ButtonsView(),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated'),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text('Disabled'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated Icon'),
            ),
          ],
        ),
      ),
    );
  }
}