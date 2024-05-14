import 'package:flutter/material.dart';
import 'package:w_app/config/router/app_router.dart';
import 'package:w_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      //Router - config
      routerConfig: appRouter,
      //Colocamos nuestro tema o estilo
      theme: AppTheme(selectedColor: 0).getTheme(),
    );
  }
}