import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: 'Play'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
        ],
        currentIndex: _calculateSelectedIndex(context),
        onTap: (int idx) => _onItemTapped(idx, context),
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path.toLowerCase();
    if (location.contains('play')) {
      return 1;
    }
    if (location.contains('setting')) {
      return 2;
    }
    if (location.contains('user')) {
      return 3;
    }

    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    final oldIndex = _calculateSelectedIndex(context);

    if (index == oldIndex) return;

    switch (index) {
      case 1:
        GoRouter.of(context).push('/play');
      case 2:
        GoRouter.of(context).push('/setting');
      case 3:
        GoRouter.of(context).push('/user');
      default:
        GoRouter.of(context).push('/home');
    }
  }
}
