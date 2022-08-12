import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hello_app/model/greed_list_model.dart';
import 'package:hello_app/model/greed_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GreedListScreen extends HookConsumerWidget {
  const GreedListScreen({Key? key, required currentGreed}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    GreedList greedList = GreedList();
    return Scaffold(
      body: ListView.builder(
        itemCount: greedList.greeds.length,
        itemBuilder: (context, index) {
          Greed greed = greedList.greeds[index];
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
                  context.go('/home/detail/${greed.id}');
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
