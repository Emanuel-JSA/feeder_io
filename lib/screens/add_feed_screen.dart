import 'package:feeder_io/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AddFeedScreen extends StatefulWidget {
  const AddFeedScreen({Key? key}) : super(key: key);

  @override
  State<AddFeedScreen> createState() => _AddFeedScreenState();
}

class _AddFeedScreenState extends State<AddFeedScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Builder(
        builder: (BuildContext context) => Scaffold(
          appBar: AppBar(
            title: Text('Adicionar conteudo'),
            bottom: TabBar(
              labelColor: AppColors.black38,
              unselectedLabelColor: AppColors.grey9E,
              indicatorColor: AppColors.black38,
              tabs: [
                Tab(text: 'rss'),
                Tab(text: 'newsletter'),
                Tab(text: 'reddit'),
                Tab(text: 'fediverso'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text('rss'),
              ),
              Center(
                child: Text('newsletter'),
              ),
              Center(
                child: Text('reddit'),
              ),
              Center(
                child: Text('fediverso'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
