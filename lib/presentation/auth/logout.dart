import 'package:flutter/material.dart';
import 'package:go_router_example/provider/auth.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Logout')),
      body: ElevatedButton(
        onPressed: AuthProvider.instance.logout,
        child: const Text('Logout'),
      ),
    );
  }
}
