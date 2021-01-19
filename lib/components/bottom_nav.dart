import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(),
        IconButton(
          icon: Icon(Icons.dashboard_outlined),
          onPressed: () {},
        ),
        Spacer(),
        FloatingActionButton(
          elevation: 0,
          child: Icon(Icons.shopping_bag_outlined),
          onPressed: () {},
        ),
        Spacer(),
        IconButton(
          icon: Icon(Icons.settings_outlined),
          onPressed: () {},
        ),
        Spacer(),
      ],
    );
  }
}
