import 'package:feeder_io/theme/app_colors.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text(
            "Aa",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            width: 16,
          ),
          const Icon(Icons.bookmark_border_rounded),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Text(
              "Tal coisa aconteceu em tal lugar e outra coisa também",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(
              "UOL / por André maluco / 22 de Janeiro, 2023 as 18:03",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: AppColors.grey9E),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: AppColors.grey9E,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Lorem ipsum dolor sit amet consectetur. Lectus elementum sapien diam sed vitae tristique. Malesuada ullamcorper cursus morbi sapien natoque. Scelerisque arcu urna neque amet. Egestas facilisis rhoncus suspendisse nibh consequat.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
