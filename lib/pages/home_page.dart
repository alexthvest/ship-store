import 'package:flutter/material.dart';
import 'package:shipstore/components/group_card.dart';
import 'package:shipstore/components/info_card.dart';
import 'package:shipstore/layouts/main_layout.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Транзацкции',
      subtitle: 'Активность за все время',
      body: Padding(
        padding: const EdgeInsets.only(
          left: 32,
          right: 32,
          top: 8,
        ),
        child: Column(
          children: [
            InfoCard(
              title: 'Всего за неделю',
              subtitle: '-3,000 нихуя',
            ),
            GroupCard(
              title: 'Вторник, 19 января',
            ),
          ],
        ),
      ),
    );
  }
}
