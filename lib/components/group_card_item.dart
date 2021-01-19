import 'package:flutter/material.dart';

class GroupCardItem extends StatelessWidget {
  final Icon icon;
  final String title;
  final String subtitle;

  const GroupCardItem({Key key, this.icon, this.title, this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: icon,
      title: Text(
        title,
        style: Theme.of(context).textTheme.button,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.caption,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '-1,000',
            style: Theme.of(context).textTheme.button,
          ),
          Text('нихуя', style: Theme.of(context).textTheme.caption),
        ],
      ),
    );
  }
}
