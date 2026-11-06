import 'package:flutter/material.dart';
import '../Core/Theme/app_theme.dart';
import '../Screens/home_screen.dart';

class DevikaPortfolioApp extends StatelessWidget {
  const DevikaPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Devika Arun | Flutter Developer',
      theme: AppTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}
