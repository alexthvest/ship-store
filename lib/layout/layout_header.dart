import 'package:flutter/material.dart';

class LayoutHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  const LayoutHeader({
    Key key,
    @required this.title,
    @required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline4.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 12.0),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.caption.copyWith(
                  fontSize: 16.0,
                ),
          ),
        ],
      ),
    );
  }
}
