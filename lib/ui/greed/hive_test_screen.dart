import 'package:flutter/material.dart';
import 'package:greed/data/model/greed_state.dart';
import 'package:greed/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HiveTestScreen extends ConsumerWidget {
  HiveTestScreen({Key? key}) : super(key: key);

  final test1 = box.get(
    1,
    defaultValue: const GreedState(
      name: 'default',
      price: 666,
      description: 'default desc',
    ),
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(test1.name),
        Text(test1.price.toString()),
        Text(test1.description),
      ],
    );
  }
}
