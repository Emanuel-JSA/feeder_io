import 'package:feeder_io/components/news_card.dart';
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class FeedOrderByFeed extends StatelessWidget {
  const FeedOrderByFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        Theme(
          data: Theme.of(context).copyWith(
            dividerColor: Colors.transparent,
          ),
          child: ExpansionTile(
            initiallyExpanded: true,
            textColor: AppColors.black5A,
            collapsedTextColor: AppColors.black5A,
            title: Text('🗣 Politica'),
            children: [
              NewsCard(
                cardTitle: 'Malesuada ullamcorper proin libero nunc consequat.',
              ),
            ],
          ),
        ),
        Theme(
          data: Theme.of(context).copyWith(
            dividerColor: Colors.transparent,
          ),
          child: ExpansionTile(
            initiallyExpanded: true,
            textColor: AppColors.black5A,
            collapsedTextColor: AppColors.black5A,
            title: Text('⚽ Esporte'),
            children: [
              NewsCard(
                cardTitle:
                    'consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              ),
            ],
          ),
        )
      ],
    );
  }
}
