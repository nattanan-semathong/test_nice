import 'package:flutter/material.dart';
import 'package:my_app/core/themes/app_themes.dart';
import 'package:my_app/features/app/routes.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      routerConfig: AppRouter().generateRoute(),
    );
  }
}
