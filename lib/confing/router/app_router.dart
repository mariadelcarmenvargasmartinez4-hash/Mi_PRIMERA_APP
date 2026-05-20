import 'package:go_router/go_router.dart';
import 'package:mi_primera_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:mi_primera_app/presentation/screens/home/home_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),
  ],
);