import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeURL = "/";
  static const routeName = "home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('환영합니다!'),
      ),
      body: const Center(
        child: Text(
          '환영합니다!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
