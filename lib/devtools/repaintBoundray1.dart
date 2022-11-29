import 'package:flutter/material.dart';


class AreaRepaintsPage extends StatelessWidget {
  const AreaRepaintsPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Repaint Example')),
      body: const Center(
        child: RepaintBoundary(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}