import 'package:flutter/material.dart';
import 'package:feeder_io/routes.dart';
import 'package:feeder_io/theme/app_theme.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.buildThemeData(),
      onGenerateRoute: Routes.generateRoutes,
      initialRoute: '/',
    );
  }
}
