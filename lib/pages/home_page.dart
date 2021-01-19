import 'package:flutter/material.dart';
import 'package:shipstore/components/group_card.dart';
import 'package:shipstore/components/group_card_item.dart';
import 'package:shipstore/components/info_card.dart';
import 'package:shipstore/layout/layout_header.dart';
import 'package:shipstore/layout/main_layout.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      header: LayoutHeader(
        title: 'Транзацкции',
        subtitle: 'Активность за все время',
      ),
      body: Column(
        children: [
          InfoCard(
            title: 'Всего за неделю',
            subtitle: '-3,000 нихуя',
          ),
          SizedBox(height: 8.0),
          GroupCard(
            title: 'Вторник, 19 января',
            items: [
              GroupCardItem(
                icon: Icon(Icons.shopping_cart_outlined),
                title: 'Шимаказе',
                subtitle: '21:00',
              ),
              GroupCardItem(
                icon: Icon(Icons.shopping_cart_outlined),
                title: 'Шимаказе',
                subtitle: '21:00',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
