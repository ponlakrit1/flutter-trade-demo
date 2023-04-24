import 'package:flutter/material.dart';

import 'package:trade_demo/screens/welcome_screen.dart';

class RoutePaths {
  static const String Welcome = 'welcome';
}

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
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