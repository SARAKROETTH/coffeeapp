import 'package:coffeeshop/app/router/app_router.dart';
import 'package:coffeeshop/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CoffeeShopApp extends StatelessWidget {
  const CoffeeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Coffee Shop',
      debugShowCheckedModeBanner: false,

      // Create Theme Helper for Light and Dark Mode
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
    //Navigation using GoRouter

    routerConfig: appRouter,


    );
  }
}
