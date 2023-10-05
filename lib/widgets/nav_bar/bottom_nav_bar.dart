import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('BottomNavigationBar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.deepOrange,
        backgroundColor: Colors.amber,
        currentIndex: _currentIndex,
        items: _navDestination(),
      ),
      body: _getPages()[_currentIndex],
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

  List<Widget> _getPages() {
    return [
      Center(
        child: Text(
          'HOME',
          style: TextStyle(color: Colors.amber[900]),
        ),
      ),
      Center(
        child: Text(
          'BUSSINES',
          style: TextStyle(color: Colors.amber[900]),
        ),
      ),
      Center(
        child: Text(
          'SCHOOL',
          style: TextStyle(color: Colors.amber[900]),
        ),
      ),
    ];
  }
}
