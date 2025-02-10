import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_list_app/features/auth/views/login_page.dart';
// import 'package:shopping_list_app/features/shopping_list/views/shopping_list_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    // GoRoute(
    //   path: '/shopping-list',
    //   builder: (context, state) => const ShoppingListPage(),
    // ),
  ],
);