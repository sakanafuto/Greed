import 'package:flutter/material.dart';
import 'package:greed/data/model/greed_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GreedDetailScreen extends ConsumerWidget {
  const GreedDetailScreen({Key? key, required this.greed}) : super(key: key);
  final GreedState greed;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Scaffold(
      appBar: AppBar(title: const Text('詳細')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Text(greed.name),
          const SizedBox(height: 16),
          Text('¥${greed.price}円'),
          const SizedBox(height: 16),
          Text('なんでほしいの？\n${greed.description}'),
        ],
      ),
    );
  }
}
