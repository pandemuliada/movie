import 'package:flutter/material.dart';
import 'package:movie/components/bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _screenWrapper(_currentIndex),
      ),
      bottomNavigationBar: MainBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int selectedIndex) {
          setState(() {
            _currentIndex = selectedIndex;
          });
        },
      ),
    );
  }
}

Widget _screenWrapper(int index) {
  switch (index) {
    case 0:
      return Container(
        child: Center(child: Text("Homepage")),
      );
    case 1:
      return Container(
        child: Center(child: Text("Movie Page")),
      );
    case 2:
      return Container(
        child: Center(child: Text("Favorite Page")),
      );
    case 3:
      return Container(
        child: Center(child: Text("Profile Page")),
      );
  }

  throw "Invalid index $index";
}
