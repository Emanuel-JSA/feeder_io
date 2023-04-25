import 'package:flutter/material.dart';

import 'news_card.dart';

class FeedOrderByAll extends StatelessWidget {
  const FeedOrderByAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        const NewsCard(
          feedTitle: '🗣 Politica',
          cardTitle: 'Malesuada ullamcorper proin libero nunc consequat.',
        ),
        const NewsCard(
          feedTitle: '⚽ Esporte',
          cardTitle: 'Lectus elementum.',
        ),
      ],
    );
  }
}
