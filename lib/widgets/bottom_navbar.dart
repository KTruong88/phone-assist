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
    Text('placeholder'),
    Text('placeholder'),
    Text('placeholder'),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: _widgetOptions[0]),
        BottomNavigationBarItem(icon: Icon(Icons.chat), title: _widgetOptions[1]),
        BottomNavigationBarItem(icon: Icon(Icons.edit), title: _widgetOptions[2]),
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
