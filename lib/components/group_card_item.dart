import 'package:flutter/material.dart';

class GroupCardItem extends StatelessWidget {
  final Icon icon;
  final String title;
  final String subtitle;
  final double contentPadding;

  const GroupCardItem({
    Key key,
    this.icon,
    this.contentPadding = 8.0,
    @required this.title,
    @required this.subtitle,
  }) : super(key: key);

  Widget _buildTwoLineContent(
    BuildContext context, {
    String title,
    String subtitle,
    CrossAxisAlignment crossAxisAlignment,
  }) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.button,
        ),
        SizedBox(height: 4.0),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: contentPadding,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (icon != null) ...[
            icon,
            SizedBox(width: 24.0),
          ],
          _buildTwoLineContent(
            context,
            title: title,
            subtitle: subtitle,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          Spacer(),
          _buildTwoLineContent(
            context,
            title: '-1,000',
            subtitle: 'нихуя',
            crossAxisAlignment: CrossAxisAlignment.end,
          ),
        ],
      ),
    );
  }
}
