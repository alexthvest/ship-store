import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shipstore/pages/home_page.dart';

class Application extends StatelessWidget {
  ThemeData _buildTheme() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: const Color(0xFF101010),
      statusBarColor: const Color(0xFF101010),
    ));

    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: const Color(0xFF202020),
      backgroundColor: const Color(0xFF101010),
      scaffoldBackgroundColor: const Color(0xFF101010),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ship Store',
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(),
      home: HomePage(),
    );
  }
}
