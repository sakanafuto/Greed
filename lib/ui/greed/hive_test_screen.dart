import 'package:flutter/material.dart';
import 'package:hello_app/data/local/greed_model.dart';
import 'package:hello_app/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HiveTestScreen extends ConsumerWidget {
  HiveTestScreen({Key? key}) : super(key: key);

  final test1 = box.get(1,
      defaultValue:
          GreedModel(name: 'default', price: 666, description: 'default desc'));

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
