import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData buildDarkTheme() {
  final _kPrimaryColor = const Color(0xFF202020);
  final _kBackgroundColor = const Color(0xFF101010);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: _kBackgroundColor,
    statusBarColor: _kBackgroundColor,
  ));

  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: _kPrimaryColor,
    backgroundColor: _kBackgroundColor,
    scaffoldBackgroundColor: _kBackgroundColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
    ),
  );
}
