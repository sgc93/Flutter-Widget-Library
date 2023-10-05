import 'package:flutter/material.dart';

class NavRail extends StatefulWidget {
  const NavRail({super.key});

  @override
  State<NavRail> createState() => _NavRailState();
}

class _NavRailState extends State<NavRail> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: const Text('#NavigationRail'),
        elevation: 0,
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NavigationRail(
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              indicatorColor: Colors.white,
              labelType: NavigationRailLabelType.selected,
              backgroundColor: Colors.black54,
              destinations: _navigationRailDestionations(),
              selectedIndex: _selectedIndex,
            ),
          ),
        ],
      ),
    );
  }

  List<NavigationRailDestination> _navigationRailDestionations() {
    return [
      const NavigationRailDestination(
        icon: Icon(
          Icons.home,
          color: Colors.white,
        ),
        label: Text(
          'HOME',
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
      ),
      const NavigationRailDestination(
        icon: Icon(
          Icons.add,
          color: Colors.white,
        ),
        label: Text(
          'ADD',
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
      ),
      const NavigationRailDestination(
        icon: Icon(
          Icons.settings,
          color: Colors.white,
        ),
        label: Text(
          'SETTINGS',
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
      ),
      const NavigationRailDestination(
        icon: Icon(
          Icons.person,
          color: Colors.white,
        ),
        label: Text(
          'ACCOUNT',
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
      ),
    ];
  }
}
