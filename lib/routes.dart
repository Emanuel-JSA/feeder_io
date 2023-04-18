import 'package:flutter/material.dart';
import 'package:feeder_io/pages/home_page.dart';
import 'package:feeder_io/pages/folder_page.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/folder':
        return MaterialPageRoute(builder: (_) => const FolderPage());
      default:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}