import 'package:flutter/material.dart';
import 'package:go_router_example/router.dart';

void main() {
  runApp(const GoRouterExampleApp());
}

class GoRouterExampleApp extends StatelessWidget {
  const GoRouterExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(seedColor: Colors.indigo);

    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        colorScheme: colorScheme,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: colorScheme.primary,
          unselectedItemColor: colorScheme.primaryFixedDim
        )
      ),
    );
  }
}
