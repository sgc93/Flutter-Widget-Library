import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('BottomNavigationBar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _navDestination(),
      ),
    );
  }

  List<BottomNavigationBarItem> _navDestination() {
    return [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.business), label: 'BUSSINES'),
      const BottomNavigationBarItem(icon: Icon(Icons.school), label: 'SCHOOL'),
    ];
  }
}
