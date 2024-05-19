import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/presentation/auth/login.dart';
import 'package:go_router_example/presentation/auth/logout.dart';
import 'package:go_router_example/presentation/root.dart';
import 'package:go_router_example/presentation/normal.dart';
import 'package:go_router_example/presentation/shell/home.dart';
import 'package:go_router_example/presentation/shell/play.dart';
import 'package:go_router_example/presentation/shell/scaffold_with_nav_bar.dart';
import 'package:go_router_example/presentation/shell/setting.dart';
import 'package:go_router_example/presentation/shell/user.dart';
import 'package:go_router_example/provider/auth.dart';

final _shellNaviKey = GlobalKey<NavigatorState>(debugLabel: 'shellNaviKey');

final GoRouter router = GoRouter(
  initialLocation: '/',
  refreshListenable: AuthProvider.instance,
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (context, state) {
          return const RootScreen();
        },
        routes: <RouteBase>[
          ShellRoute(
            navigatorKey: _shellNaviKey,
            builder: (context, state, child) {
              return ScaffoldWithNavBar(child: child);
            },
            routes: <RouteBase>[
              GoRoute(
                path: 'home',
                builder: (context, state) {
                  return const ShellHomeScreen();
                },
              ),
              GoRoute(
                path: 'play',
                builder: (context, state) {
                  return const ShellPlayScreen();
                },
              ),
              GoRoute(
                path: 'setting',
                builder: (context, state) {
                  return const ShellSettingScreen();
                },
              ),
              GoRoute(
                path: 'user',
                builder: (context, state) {
                  return const ShellUserScreen();
                },
              ),
            ],
          )
        ]),
    GoRoute(path: '/normal', builder: (context, state) => const NormalScreen()),
    GoRoute(
      path: '/auth',
      builder: (context, state) => const LoginScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: 'logout',
          builder: (context, state) => const LogoutScreen(),
        ),
      ],
      redirect: (context, state) async {
        String? redirectPath;
        final authProvider = AuthProvider.instance;

        if (authProvider.isLogin) {
          redirectPath = '/auth/logout';
        } else {
          redirectPath = '/auth';
        }

        return redirectPath;
      },

    ),
  ],
);
