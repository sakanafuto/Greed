import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hello_app/model/greed.dart';
import 'package:hello_app/model/boxes.dart';
import 'package:hello_app/model/greed_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GreedListScreen extends ConsumerWidget {
  const GreedListScreen({Key? key, required currentGreed}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greedModel = ref.read(greedModelProvider);
    return Scaffold(
      body: Column(
        children: [
          ValueListenableBuilder<Box<Greed>>(
            valueListenable: Boxes.getGreeds().listenable(),
            builder: (context, box, _) {
              final greeds = box.values.toList().cast<Greed>();
              return buildContent(greeds, greedModel);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  Widget buildContent(List<Greed> greeds, GreedModel greedModel) {
    if (greeds.isEmpty) {
      return const Center(
        child: Text(
          'Greedがありません。',
        ),
      );
    } else {
      return SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 600,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: greeds.length,
                itemBuilder: (BuildContext context, int index) {
                  final greed = greeds[index];
                  return buildGreed(context, greed, greedModel);
                },
              ),
            ),
          ],
        ),
      );
    }
  }

  Widget buildGreed(BuildContext context, Greed greed, GreedModel greedModel) {
    return Card(
      color: Theme.of(context).colorScheme.background,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      elevation: 3,
      child: InkWell(
        onTap: () {},
        child: ListTile(
          leading: IconButton(
            icon: const Icon(Icons.home_rounded),
            onPressed: () {},
          ),
          dense: true,
          title: Text(greed.name),
          subtitle: Text(greed.price.toString()),
          trailing: IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
          onTap: () {
            context.go('/list/${greed.name}');
          },
        ),
      ),
    );
  }
}
