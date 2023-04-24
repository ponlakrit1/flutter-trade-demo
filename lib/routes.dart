import 'package:flutter/material.dart';
import 'package:trade_demo/screens/login_screen.dart';

import 'package:trade_demo/screens/welcome_screen.dart';

class RoutePaths {
  static const String Welcome = 'welcome';
  static const String Login = 'login';
}

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case RoutePaths.Login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
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