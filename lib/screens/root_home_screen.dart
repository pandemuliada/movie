import 'package:flutter/material.dart';
import 'package:movie/components/bottom_navigation_bar.dart';
import 'package:movie/screens/home_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as dotEnv;

class RootHomeScreen extends StatefulWidget {
  @override
  _RootHomeScreenState createState() => _RootHomeScreenState();
}

class _RootHomeScreenState extends State<RootHomeScreen> {
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
      return HomeScreen();
    case 1:
      return Container(
        child: Center(child: Text(dotEnv.env["OMDB_API_KEY"])),
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
