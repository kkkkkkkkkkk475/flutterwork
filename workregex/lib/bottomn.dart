import 'package:flutter/material.dart';
import 'package:workregex/profile.dart';

import 'donationfillpage.dart';
import 'homedemo.dart';

import 'logo.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 1;
  set _ratingController(String? _ratingController) {}

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> screens = const [
    Donation(),
    Home2(),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 252, 243, 246),
            icon: Icon(
              Icons.clean_hands_outlined,
            ),
            label: "Donation",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.man,
              ),
              label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xffBF222B),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
      body: screens[_selectedIndex],
    );
  }
}
