import "package:flutter/material.dart";
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: const Center(child: Text('home')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/addGreed');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
