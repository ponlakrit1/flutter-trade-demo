import 'package:flutter/material.dart';

import 'package:trade_demo/routes.dart';
import 'package:trade_demo/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeMain(context),
      initialRoute: RoutePaths.Welcome,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
