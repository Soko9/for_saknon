import 'package:flutter/material.dart';
import 'package:for_saknon/src/config/navigation/app_navigation.dart';
import 'package:for_saknon/src/config/theme/app_theme.dart';
import 'package:for_saknon/src/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "For Saknon",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      onGenerateRoute: AppNavigation.onGenerateRoute,
      home: const HomeScreen(),
    );
  }
}
