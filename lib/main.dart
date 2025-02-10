import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_list_app/core/config/router.dart';
import 'package:shopping_list_app/features/auth/viewmodels/auth_viewmodel.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authViewModel = ref.watch(authViewModelProvider.notifier);

    return FutureBuilder<bool>(
      future: authViewModel.checkAuthStatus(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const MaterialApp(home: Scaffold(body: Center(child: CircularProgressIndicator())));
        }

        return MaterialApp.router(
          title: 'Shopping List',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routerConfig: router,
        );
      },
    );
  }
}