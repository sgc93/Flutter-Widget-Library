import 'package:flutter/material.dart';

class NavRail extends StatefulWidget {
  const NavRail({super.key});

  @override
  State<NavRail> createState() => _NavRailState();
}

class _NavRailState extends State<NavRail> {
  final int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: const Text('#NavigationRail'),
        elevation: 0,
      ),
      bottomNavigationBar: NavigationRail(
          destinations: _navigationRailDestionations(),
          selectedIndex: _selectedIndex),
    );
  }

  List<NavigationRailDestination> _navigationRailDestionations() {
    return [
      const NavigationRailDestination(
        icon: Icon(
          Icons.home,
          color: Colors.white,
        ),
        label: Text('HOME'),
      ),
      const NavigationRailDestination(
        icon: Icon(
          Icons.add,
          color: Colors.white,
        ),
        label: Text('ADD'),
      ),
      const NavigationRailDestination(
        icon: Icon(
          Icons.settings,
          color: Colors.white,
        ),
        label: Text('SETTINGS'),
      ),
      const NavigationRailDestination(
        icon: Icon(
          Icons.person,
          color: Colors.white,
        ),
        label: Text('ACCOUNT'),
      ),
    ];
  }
}
