import 'package:flutter/material.dart';
import 'package:shipstore/components/app_header.dart';
import 'package:shipstore/components/bottom_nav.dart';

class MainLayout extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget body;

  MainLayout({this.title, this.subtitle, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: AppHeader(
                title: title,
                subtitle: subtitle,
              ),
            ),
            Expanded(
              flex: 11,
              child: body,
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                child: BottomNavigation(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
