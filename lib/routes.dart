import 'package:feeder_io/screens/add_feed_screen.dart';
import 'package:feeder_io/screens/home_screen.dart';
import 'package:feeder_io/screens/post_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/add_feed':
        return MaterialPageRoute(builder: (_) => AddFeedScreen());
        case '/post':
        return MaterialPageRoute(builder: (_) => PostScreen());
      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
