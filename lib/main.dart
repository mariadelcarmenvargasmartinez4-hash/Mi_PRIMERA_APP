import 'package:flutter/material.dart';
//import 'presentation/screens/home/home_screen.dart';
import 'confing/theme/app_theme.dart';
import 'package:mi_primera_app/confing/router/app_router.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      //home: const HomeScreen(),
      theme: AppTheme(selectColor: 0).getTheme(),
      routerConfig: appRouter,
    );
  }
}