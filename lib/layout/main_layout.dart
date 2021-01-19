import 'package:flutter/material.dart';
import 'package:shipstore/components/bottom_nav.dart';

class MainLayout extends StatelessWidget {
  final Widget header;
  final Widget body;

  MainLayout({
    @required this.header,
    @required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            header,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: body,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        padding: const EdgeInsets.all(24.0),
        child: BottomNavigation(),
      ),
    );
  }
}
