import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hello_app/data/datasource/greed_data_source.dart';
import 'package:hello_app/data/datasource/boxes.dart';
import 'package:hello_app/data/model/greed_state.dart';

final greedDataSourceProvider =
    Provider<GreedDataSource>((_) => GreedDataSourceImpl());

class GreedDataSourceImpl implements GreedDataSource {
  GreedDataSourceImpl();

  @override
  addGreed({
    required String name,
    required int price,
    String? description,
  }) async {
    final greed = GreedState(
      name: name,
      price: price,
      description: description,
    );

    final box = Boxes.getGreeds();
    box.add(greed);
  }

  @override
  greedFromName({required String name}) {}
}
