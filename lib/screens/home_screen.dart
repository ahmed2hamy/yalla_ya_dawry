import 'package:flutter/material.dart';

import '../constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 4;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: kPrimaryColor,
          unselectedItemColor: kUnSelectedColor,
          fixedColor: Colors.white,
          items: kBottomNavBarItems,
          currentIndex: _currentIndex,
          onTap: (index) async {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: kBottomNavBarList[_currentIndex],
      ),
    );
  }
}
