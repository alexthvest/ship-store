import 'package:flutter/material.dart';
import 'package:shipstore/components/group_card_item.dart';

class GroupCard extends StatelessWidget {
  final String title;
  final List<GroupCardItem> items;

  const GroupCard({
    Key key,
    @required this.title,
    this.items = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      padding: const EdgeInsets.only(
        top: 24.0,
        left: 24.0,
        right: 24.0,
        bottom: 12.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.button.copyWith(
                  fontSize: 18.0,
                ),
          ),
          SizedBox(height: 16.0),
          Column(
            children: items,
          ),
        ],
      ),
    );
  }
}
