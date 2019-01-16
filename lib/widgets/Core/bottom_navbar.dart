import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavbar();
  }
}

class _BottomNavbar extends State<BottomNavbar> {
  int _selectedIndex = 1;
  final _widgetOptions = [
    Text('Index 0: Home'),
    Text('Index 1: Business'),
    Text('Index 2: School'),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
        BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('Chat')),
        BottomNavigationBarItem(icon: Icon(Icons.edit), title: Text('Notes')),
      ],
      currentIndex: _selectedIndex,
      fixedColor: Colors.blueAccent,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
