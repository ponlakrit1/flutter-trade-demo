import 'package:flutter/material.dart';
import 'package:trade_demo/screens/add_post_screen.dart';
import 'package:trade_demo/screens/bottom_navigation_screen.dart';
import 'package:trade_demo/screens/home_screen.dart';
import 'package:trade_demo/screens/like_screen.dart';
import 'package:trade_demo/screens/login_screen.dart';
import 'package:trade_demo/screens/notification_screen.dart';
import 'package:trade_demo/screens/search_screen.dart';

import 'package:trade_demo/screens/welcome_screen.dart';

class RoutePaths {
  static const String Welcome = 'welcome';
  static const String Login = 'login';
  static const String BottomNavigationBar = 'bottom_navigation_bar';
  static const String Home = 'home';
  static const String Search = 'search';
  static const String AddPost = 'addPost';
  static const String Notification = 'notification';
  static const String Like = 'like';
}

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case RoutePaths.Login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RoutePaths.BottomNavigationBar:
        return MaterialPageRoute(builder: (_) => const BottomNavigationBarScreen());
      case RoutePaths.Home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RoutePaths.Search:
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case RoutePaths.AddPost:
        return MaterialPageRoute(builder: (_) => const AddPostScreen());
      case RoutePaths.Notification:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case RoutePaths.Like:
        return MaterialPageRoute(builder: (_) => const LikeScreen());
      default:
        return  MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          )
        );
    }
  }
}