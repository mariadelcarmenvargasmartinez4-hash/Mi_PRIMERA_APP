import 'package:go_router/go_router.dart';
import 'package:mi_primera_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:mi_primera_app/presentation/screens/home/home_screen.dart';
import 'package:mi_primera_app/presentation/posgress/posgress_screen.dart';
import 'package:mi_primera_app/presentation/cards/cards_screen.dart';
import 'package:mi_primera_app/presentation/snackbars/snackbars_screen.dart';
import 'package:mi_primera_app/presentation/tutorial/tutorial_screen.dart';
import 'package:mi_primera_app/presentation/theme-changer/theme-changer_screen.dart';
import 'package:mi_primera_app/presentation/counter-riverpod/counter-riverpod_screen.dart';
import 'package:mi_primera_app/presentation/animated/animated_screen.dart';



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
     GoRoute(
  path: '/cards',
  name: CardsScreen.name,
  builder: (context, state) => const CardsScreen(),
),

GoRoute(
  path: '/progress',
  name: ProgressScreen.name,
  builder: (context, state) => const ProgressScreen(),
),
GoRoute(
  path: '/snackbars',
  name: SnackbarsScreen.name,
  builder: (context, state) => const SnackbarsScreen(),
),
GoRoute(
  path: '/tutorial',
  name: TutorialScreen.name,
  builder: (context, state) => const TutorialScreen(),
),
GoRoute(
  path: '/theme-changer',
  name: ThemeChangerScreen.name,
  builder: (context, state) => const ThemeChangerScreen(),
),
GoRoute(
  path: '/counter-riverpod',
  name: CounterRiverpodScreen.name,
  builder: (context, state) => const CounterRiverpodScreen(),
),
GoRoute(
  path: '/animated',
  name: AnimatedScreen.name,
  builder: (context, state) => const AnimatedScreen(),
),
  ],
);