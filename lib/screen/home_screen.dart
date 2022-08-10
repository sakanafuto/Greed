import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: Theme.of(context),
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Card(
              child: ListTile(
                title: const Text("App"),
                onTap: () => context.go('/app'),
              ),
            ),
            const Card(
              child: ListTile(
                title: Text("Home"),
                onTap: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
