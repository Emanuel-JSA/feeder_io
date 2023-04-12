import 'package:flutter/material.dart';
import 'package:feeder_io/pages/home_page.dart';

class Routes {
  static Map<String, WidgetBuilder> routes() {
    return {
      '/': (context) => const HomePage(),
    };
  }
}