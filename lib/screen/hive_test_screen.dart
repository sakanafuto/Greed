import 'package:flutter/material.dart';
import 'package:hello_app/main.dart';
import 'package:hello_app/model/boxes.dart';
import 'package:hello_app/model/greed.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HiveTestScreen extends ConsumerWidget {
  HiveTestScreen({Key? key}) : super(key: key);

  // var testBox = Hive.box<Greed>('test');
  // Greed? test1 = testBox.get('name');

  // final boxes = Boxes.getGreeds();
  final test1 = box.get(1,
      defaultValue:
          Greed(name: 'default', price: 666, description: 'default desc'));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Text(boxes.values.join()),
        Text(test1.name),
        Text(test1.price.toString()),
        Text(test1.description),
      ],
    );
  }
}
