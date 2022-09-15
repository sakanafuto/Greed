import 'package:flutter/material.dart';
import 'package:greed/data/datasource/boxes.dart';
import 'package:greed/data/datasource/notifier/greed_notifier.dart';
import 'package:greed/data/model/greed_state.dart';
import 'package:greed/ui/greed/greed_detail_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GreedListScreen extends ConsumerWidget {
  const GreedListScreen({Key? key, required currentGreed}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<GreedState> greeds = ref.watch(greedsProvider);

    return Scaffold(
      body: Column(
        children: [
          ValueListenableBuilder<Box<GreedState>>(
            valueListenable: Boxes.getGreeds().listenable(),
            builder: (context, box, _) {
              List<GreedState> greedList = box.values.toList();
              return buildContent(greedList, greeds);
            },
          ),
        ],
      ),
    );
  }

  Widget buildContent(
    List<GreedState> greedList,
    List<GreedState> greeds,
  ) {
    return greedList.isNotEmpty
        ? const Center(child: Text('Greedがありません。'))
        : SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 600,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: greedList.length,
                    itemBuilder: (BuildContext context, index) {
                      final greed = greedList[index];
                      return buildGreed(context, greed, greeds);
                    },
                  ),
                ),
              ],
            ),
          );
  }
}

Widget buildGreed(
  BuildContext context,
  GreedState greed,
  List<GreedState> greeds,
) {
  return Card(
    color: Theme.of(context).colorScheme.background,
    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    elevation: 3,
    child: InkWell(
      onTap: () {},
      child: ListTile(
        leading: IconButton(
          icon: const Icon(Icons.home_rounded),
          // icon選択
          onPressed: () {},
        ),
        dense: true,
        title: Text(greed.name),
        // todo: 日本円表示
        subtitle: Text(greed.price.toString()),
        trailing: IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => GreedDetailScreen(greed: greed),
          ),
        ),
      ),
    ),
  );
}
