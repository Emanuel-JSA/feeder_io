import 'package:flutter/material.dart';
import 'package:feeder_io/theme/app_colors.dart';

class NewsCard extends StatelessWidget {
  final String? feedTitle;
  final String cardTitle;

  const NewsCard({super.key, this.feedTitle, required this.cardTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/post');
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (feedTitle != null)
                    Text(
                      feedTitle ?? '',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: AppColors.black5A,
                          ),
                    ),
                  Text(
                    cardTitle,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
