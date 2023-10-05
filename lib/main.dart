import 'package:flutter/material.dart';
import 'package:learn_widgets/widgets/nav_bar/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'learn flutter widgets',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Color.fromARGB(151, 210, 192, 192)),
          bodySmall: TextStyle(color: Color.fromARGB(144, 255, 255, 255)),
        ),
      ),
      home: const BottomNavBar(),
    );
  }
}
