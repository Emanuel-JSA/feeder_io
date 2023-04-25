import 'package:feeder_io/components/feed_order_by_all.dart';
import 'package:feeder_io/components/feed_order_by_feed.dart';
import 'package:flutter/material.dart';
import 'package:feeder_io/theme/app_colors.dart';

class FeedScreen extends StatefulWidget {
  int currentIndex = 0;

  FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 74,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    widget.currentIndex = 0;
                  });
                },
                child: Text(
                  'Tudo',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: widget.currentIndex == 1
                            ? AppColors.grey9E
                            : AppColors.black38,
                      ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    widget.currentIndex = 1;
                  });
                },
                child: Text(
                  'Folders',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: widget.currentIndex == 0
                            ? AppColors.grey9E
                            : AppColors.black38,
                      ),
                ),
              ),
            ],
          ),
        ),
        widget.currentIndex == 0
            ? const FeedOrderByAll()
            : const FeedOrderByFeed(),
      ],
    );
  }
}
