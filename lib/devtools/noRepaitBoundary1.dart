import 'package:flutter/material.dart';


class noAreaRepaintsPage extends StatelessWidget {
  const noAreaRepaintsPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('no Repaint Example')),
      body: const Center(
  
          child: CircularProgressIndicator(),
        
      ),
    );
  }
}