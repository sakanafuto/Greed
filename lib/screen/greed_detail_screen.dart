import 'package:flutter/material.dart';
import 'package:hello_app/model/greed_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GreedDetailScreen extends HookConsumerWidget {
  final Greed greed;
  const GreedDetailScreen({Key? key, required this.greed}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
          title: Text('${greed.id}つ目のほしいもの'),
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
        )
    );
  }
}
