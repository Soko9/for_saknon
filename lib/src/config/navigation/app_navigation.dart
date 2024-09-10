import 'package:flutter/material.dart';
import 'package:for_saknon/src/modules/animals/ui/animals_screen.dart';

import '../../home_screen.dart';

abstract class AppNavigation {
  static Route onGenerateRoute(RouteSettings settings) {
    return switch (settings.name) {
      HomeScreen.route => MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        ),
      AnimalsScreen.route => MaterialPageRoute(
          builder: (_) => const AnimalsScreen(),
        ),
      _ => MaterialPageRoute(builder: (_) => Container()),
    };
  }
}
