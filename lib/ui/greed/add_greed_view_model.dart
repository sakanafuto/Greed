import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greed/data/datasource/boxes.dart';
import 'package:greed/data/model/greed_state.dart';

final greedNotifier =
    StateNotifierProvider<GreedNotifier, GreedState>((ref) => GreedNotifier());

class GreedNotifier extends StateNotifier<GreedState> {
  GreedNotifier()
      : super(
            const GreedState(name: "sample", price: 0, description: "sample"));

  void addGreed(
      {required String name, required int price, String? description}) {
    state = GreedState(name: name, price: price, description: description);

    final box = Boxes.getGreeds();
    box.add(state);
  }
}
