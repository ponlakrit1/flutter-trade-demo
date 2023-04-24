import 'package:flutter/material.dart';
import 'package:trade_demo/screens/add_post_screen.dart';
import 'package:trade_demo/screens/home_screen.dart';
import 'package:trade_demo/screens/like_screen.dart';
import 'package:trade_demo/screens/notification_screen.dart';
import 'package:trade_demo/screens/search_screen.dart';
import 'package:trade_demo/utils/style.dart';

import 'package:trade_demo/widgets/bottom_nav_bar_widget.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarWidgetScreen createState() => _BottomNavigationBarWidgetScreen();
}

class _BottomNavigationBarWidgetScreen extends State<BottomNavigationBarScreen> {

  int _selectBottomNavbar = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(_appBarText(_selectBottomNavbar)),
        //   backgroundColor: kPrimaryColor,
        // ),
        body: SafeArea(
          child: _bodyContainer(_selectBottomNavbar),
        ),
        bottomNavigationBar: BottomNavBar(
          selectedBottomBar: _selectBottomNavbar,
          onTapBar: (value) {
            setState(() {
              _selectBottomNavbar = value;
            });
          },
        ),
      ),
      onWillPop: () async {
        return false;
      }
    );
  }

  Widget _bodyContainer(int selected) {
    Widget container;

    switch (selected) {
      case 0:
        container = const HomeScreen();
        break;
      case 1:
        container = const SearchScreen();
        break;
      case 2:
        container = const AddPostScreen();
        break;
      case 3:
        container = const NotificationScreen();
        break;
      case 4:
        container = const LikeScreen();
        break;
      default:
        container = const Text('Error page not found');
        break;
    }

    return container;
  }

  String _appBarText(int selected) {
    String appBarText = "";

    switch (selected) {
      case 0:
        appBarText = 'Home';
        break;
      case 1:
        appBarText = 'Explore';
        break;
      case 2:
        appBarText = 'Add Post';
        break;
      case 3:
        appBarText = 'Activity';
        break;
      case 4:
        appBarText = 'Profile';
        break;
    }

    return appBarText;
  }

}
