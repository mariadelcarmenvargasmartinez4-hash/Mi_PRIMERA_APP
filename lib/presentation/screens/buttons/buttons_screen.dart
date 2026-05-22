import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = 'buttons';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const seedColor = Color(0xFF0AA6A6);

    return Theme(
      data: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
        useMaterial3: true,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Botones'),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('Regresar'),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => context.pop(),
        ),
        body: const _ButtonsView(),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Wrap(
        runSpacing: 14,
        spacing: 12,
        alignment: WrapAlignment.center,
        children: [

          // ===== Elevated =====
          ElevatedButton(
            onPressed: () {},
            child: const Text('Elevated'),
          ),

          ElevatedButton(
            onPressed: null,
            child: const Text('Elevated Disabled'),
          ),

          // ===== Filled =====
          FilledButton(
            onPressed: () {},
            child: const Text('Filled'),
          ),

          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.check),
            label: const Text('Filled Icon'),
          ),

          // ===== Outlined =====
          OutlinedButton(
            onPressed: () {},
            child: const Text('Outline'),
          ),

          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.star_border),
            label: const Text('Outline'),
          ),

          // ===== Text Buttons =====
          TextButton(
            onPressed: () {},
            child: const Text('Text Button'),
          ),

          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.text_fields),
            label: const Text('Text Button'),
          ),

          // ===== Icon Buttons =====
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
          ),

          // Icon button circular filled (como el de la imagen)
          Container(
            decoration: BoxDecoration(
              color: color.primary,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.grid_view_rounded),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}