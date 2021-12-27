import 'package:flutter/material.dart';

import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kWhiteColor,
      selectedItemColor: Color(0xFF050A30),
      unselectedItemColor: Color(0xFF050A30).withOpacity(.25),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        // Respond to item press.
      },
      items: [
        BottomNavigationBarItem(
          title: Text('Home'),
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          title: Text('Group'),
          icon: Icon(Icons.message),
        ),
        BottomNavigationBarItem(
            title: Text('Results'), icon: Icon(Icons.query_stats)),
        BottomNavigationBarItem(
          title: Text('Blog'),
          icon: Icon(Icons.article),
        ),
      ],
    );
  }
}
