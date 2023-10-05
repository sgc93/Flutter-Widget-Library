import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        title: const Text('#NavigationBar'),
        backgroundColor: Colors.deepPurple[600],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: _navigationDestionations(),
      ),
    );
  }

  List<NavigationDestination> _navigationDestionations() {
    return [
      const NavigationDestination(
        icon: Icon(Icons.home),
        label: 'HOME',
      ),
      const NavigationDestination(
        icon: Icon(Icons.add),
        label: 'ADD',
      ),
      const NavigationDestination(
        icon: Icon(Icons.settings),
        label: 'SETTINGS',
      ),
      const NavigationDestination(
        icon: Icon(Icons.person),
        label: 'ACCOUNT',
      ),
    ];
  }
}
