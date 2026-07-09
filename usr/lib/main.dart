import 'package:flutter/material.dart';
import 'screens/lock_screen.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(const PKSApp());
}

class PKSApp extends StatelessWidget {
  const PKSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Knowledge System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0F172A),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          brightness: Brightness.dark,
        ),
        fontFamily: 'Inter',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LockScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}
