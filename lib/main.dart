import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_theme.dart';
import 'package:portfolio/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seifeddine Portfolio',
      home: const HomeView(),
      theme: AppTheme.darkTheme,
    );
  }
}
