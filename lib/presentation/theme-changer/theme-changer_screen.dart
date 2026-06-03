import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:mi_primera_app/confing/theme/app_theme.dart';
import 'package:mi_primera_app/presentation/provaider/theme_provaider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const String name = 'theme-changer-screen';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(themeNotifierProvider);

    final themeNotifier =
        ref.read(themeNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            onPressed: () {
              themeNotifier.toggleDarkMode();
            },
            icon: Icon(
              appTheme.isDarkMode
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined,
            ),
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: colorList.length,

        itemBuilder: (context, index) {
          final color = colorList[index];

          return RadioListTile<int>(
            title: Text(
              'Color ${index + 1}',
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.w500,
              ),
            ),

            subtitle: Text(
              color.toString(),
            ),

            activeColor: color,

            value: index,

            groupValue: appTheme.selectColor,

            onChanged: (value) {
              if (value == null) return;

              themeNotifier.changeColorIndex(value);
            },
          );
        },
      ),
    );
  }
}