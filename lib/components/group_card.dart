import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
  final String title;

  const GroupCard({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.only(
        top: 24,
        left: 24,
        right: 24,
        bottom: 12,
      ),
      margin: const EdgeInsets.only(bottom: 8),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.button.copyWith(
                  fontSize: 18,
                ),
          ),
          SizedBox(
            height: 16,
          ),
          Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.shopping_cart_outlined),
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
                title: Text(
                  'Shimakaze',
                  style: Theme.of(context).textTheme.button,
                ),
                subtitle: Text(
                  '10:26',
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.shopping_cart_outlined),
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
                title: Text(
                  'Shimakaze',
                  style: Theme.of(context).textTheme.button,
                ),
                subtitle: Text(
                  '10:26',
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
