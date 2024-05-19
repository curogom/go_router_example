import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go Router Example App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Go To ShallRouter Example'),
              onPressed: () => context.go('/home'),
            ),
            ElevatedButton(
              child: const Text('Go To NormalRouter Example'),
              onPressed: () => context.push('/normal'),
            ),
            ElevatedButton(
              child: const Text('Go To Auth Redirect Example'),
              onPressed: () => context.push('/auth'),
            ),
          ],
        ),
      ),
    );
  }
}
