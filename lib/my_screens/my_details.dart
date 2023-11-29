
import 'package:flutter/material.dart';

class MyDetailPage extends StatelessWidget {
  const MyDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: const Center(
        child: Text(
          'WELCOME TO NESTED NAVIGATION'
        ),
      ),
    );
  }
}