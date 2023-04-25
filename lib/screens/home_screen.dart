import 'package:feeder_io/screens/add_feed_screen.dart';
import 'package:feeder_io/screens/feed_screen.dart';
import 'package:feeder_io/theme/app_colors.dart';
import 'package:feeder_io/components/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  int currentIndex = 0;

  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = [FeedScreen(), AddFeedScreen()];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: screens.elementAt(widget.currentIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.sort_rounded, size: 30),
            label: 'Drawer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 30),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_rounded, size: 30),
            label: 'Add',
          ),
        ],
        currentIndex: widget.currentIndex,
        selectedItemColor: AppColors.black38,
        unselectedItemColor: AppColors.black38,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        onTap: (index) {
          switch (index) {
            case 0:
              _scaffoldKey.currentState?.openDrawer();
              break;
            case 1:
              setState(() {
                widget.currentIndex = 0;
              });
              break;
            case 2:
              setState(() {
                widget.currentIndex = 1;
              });
              break;
          }
        },
      ),
      drawer: const CustomDrawer(),
    );
  }
}
