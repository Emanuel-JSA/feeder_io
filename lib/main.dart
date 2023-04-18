import 'package:flutter/material.dart';
import 'package:feeder_io/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.manrope().fontFamily,
      ),
      onGenerateRoute: Routes.generateRoutes,
      initialRoute: '/',
    );
  }
}