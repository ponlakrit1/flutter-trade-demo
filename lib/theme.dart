import 'package:flutter/material.dart';

import 'package:trade_demo/utils/style.dart';

const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);

ThemeData themeMain(BuildContext context) {
  return ThemeData(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    fontFamily: 'Kanit',
  );
}