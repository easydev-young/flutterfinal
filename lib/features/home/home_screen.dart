import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterfinal/features/authentication/repos/authentication_repo.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  static const routeURL = "/";
  static const routeName = "home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('환영합니다!'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              ref.read(authRepo).signOut();
              context.go("/");
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '환영합니다!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.read(authRepo).signOut();
                context.go("/");
              },
              child: const Text('로그아웃'),
            ),
          ],
        ),
      ),
    );
  }
}
