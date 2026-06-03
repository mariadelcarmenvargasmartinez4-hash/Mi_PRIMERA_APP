import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:mi_primera_app/confing/theme/app_theme.dart';


// Listado de colores inmutables
final colorListProvider = Provider( (ref) => colorList );

// Un boolean para controlar el tema
final isDarkModeProvider = StateProvider( (ref) => false );

// Integer para controlar el color seleccionado
final selectedColorProvider = StateProvider( (ref) => 0 );

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier()
);

// Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = Estado = new AppTheme()
  ThemeNotifier(): super( AppTheme() );

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex){
    state = state.copyWith(selectedColor: colorIndex);
  }
}