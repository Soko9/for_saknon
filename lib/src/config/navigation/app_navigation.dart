import 'package:flutter/material.dart';
import 'package:for_saknon/src/modules/animals/ui/animals_screen.dart';

import '../../home_screen.dart';

abstract class AppNavigation {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.route:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case AnimalsScreen.route:
        return MaterialPageRoute(
          builder: (_) => const AnimalsScreen(),
        );
      default:
      return MaterialPageRoute(builder: (_) => Container());
    }
  }
}
