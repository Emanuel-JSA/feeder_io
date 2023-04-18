import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '#F.io',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
      ),
      body: Placeholder(),
    );
  }
}
