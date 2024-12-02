import 'package:flutter/material.dart';
import 'package:working_with_svg/home_screen.dart';

void main() {
  runApp(const WorkingWithSvgApp());
}

class WorkingWithSvgApp extends StatelessWidget {
  const WorkingWithSvgApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Working with svg',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
