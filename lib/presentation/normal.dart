import 'package:flutter/material.dart';

class NormalScreen extends StatelessWidget {
  const NormalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Normal Screen')),
      body: const Center(child: Icon(Icons.phone_android, size: 120)),
    );
  }
}
