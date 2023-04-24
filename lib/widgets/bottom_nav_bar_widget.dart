import 'package:flutter/material.dart';
import 'package:trade_demo/utils/style.dart';

class BottomNavBar extends StatelessWidget {
  final ValueChanged<int> onTapBar;
  final int selectedBottomBar;

  const BottomNavBar({
    required this.onTapBar,
    required this.selectedBottomBar
  });

  List<BottomNavigationBarItem> getBottomNavigationBarItem() {
    return const [
      BottomNavigationBarItem(
        icon: Icon(
            (IconData(
              0xe903,
              fontFamily: 'homeNav',
            )),
            size: 20.0),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(
            (IconData(
              0xe907,
              fontFamily: 'searchNav',
            )),
            size: 20.0),
        label: 'Explore',
      ),
      BottomNavigationBarItem(
        icon: Icon(
            (IconData(
              0xe900,
              fontFamily: 'addNav',
            )),
            size: 20.0),
        label: 'Add Post',
      ),
      BottomNavigationBarItem(
        icon: Icon(
            (IconData(
              0xe905,
              fontFamily: 'notiNav',
            )),
            size: 20.0),
        label: 'Activity',
      ),
      BottomNavigationBarItem(
        icon: Icon(
            (IconData(
              0xe902,
              fontFamily: 'heartPost',
            )),
            size: 20.0),
        label: 'Profile',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: selectedBottomBar,
      onTap: onTapBar,
      items: getBottomNavigationBarItem(),
      selectedItemColor: kPrimaryColor,
    );
  }
}
