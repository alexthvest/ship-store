import 'package:flutter/material.dart';
import 'package:shipstore/pages/home_page.dart';
import 'package:shipstore/themes/app_theme.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ship Store',
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.darkTheme,
      home: HomePage(),
    );
  }
}
