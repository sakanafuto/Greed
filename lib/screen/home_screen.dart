import "package:flutter/material.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: const Center(child: Text('home')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.javascript),
      ),
    );
  }
}
