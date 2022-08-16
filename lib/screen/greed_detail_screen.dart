import 'package:flutter/material.dart';
import 'package:hello_app/model/greed.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GreedDetailScreen extends ConsumerWidget {
  const GreedDetailScreen({Key? key, required this.greed}) : super(key: key);
  final Greed greed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('しょうさい'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Text(greed.name),
          const SizedBox(
            height: 16,
          ),
          Text('¥${greed.price}円'),
          const SizedBox(
            height: 16,
          ),
          Text('なんでほしいの？\n${greed.description}'),
        ],
      ),
    );
  }
}
