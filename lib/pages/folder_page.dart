import 'package:flutter/material.dart';

class FolderPage extends StatelessWidget {
  const FolderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Folder name',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
      ),
      body: Placeholder(),
    );
  }
}
