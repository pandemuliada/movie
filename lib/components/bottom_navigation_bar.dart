import 'package:flutter/material.dart';

class MainBottomNavigationBar extends StatelessWidget {
  final int currentIndex; // Same as props in react
  final Function(int) onTap; // Same as function props in react

  MainBottomNavigationBar({
    @required this.currentIndex,
    this.onTap,
  }); // Pass props with constructor

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (int selectedIndex) => onTap(selectedIndex),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.home_rounded),
          icon: Icon(
            Icons.home_outlined,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.videocam_rounded),
          icon: Icon(
            Icons.videocam_outlined,
          ),
          label: "Movie",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.bookmark_rounded),
          icon: Icon(
            Icons.bookmark_outline_rounded,
          ),
          label: "List",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.person_rounded),
          icon: Icon(Icons.person_outline_rounded),
          label: "Profile",
        ),
      ],
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey[400],
      selectedItemColor: Colors.blue[400],
      selectedFontSize: 12,
      selectedLabelStyle: TextStyle(),
      selectedIconTheme: IconThemeData(
        color: Colors.blue[400],
      ),
    );
  }
}
