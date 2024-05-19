import 'package:flutter/material.dart';
import 'package:go_router_example/provider/auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: ElevatedButton(
        onPressed: AuthProvider.instance.login,
        child: const Text('Login'),
      ),
    );
  }
}
