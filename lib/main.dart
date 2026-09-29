
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const EduSpaceApp());
}

class EduSpaceApp extends StatelessWidget {
  const EduSpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EduSpace',
      theme: AppTheme.lightTheme,
      home: const LoginScreen(),
    );
  }
}