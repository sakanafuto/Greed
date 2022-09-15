import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greed/data/model/greed_state.dart';

/// todo: routerやmainで実装していたstatenotifier用の記述をadd_greed_view_modelと
/// 合わせて回収する

final greedsProvider = StateNotifierProvider<GreedNotifier, List<GreedState>>(
    (ref) => GreedNotifier(ref.read));

class GreedNotifier extends StateNotifier<List<GreedState>> {
  GreedNotifier(this._reader) : super([]);

  final Reader _reader;

  void add(GreedState item) {
    state = [...state, item];
  }

  // addGreed({
  //   required String name,
  //   required int price,
  //   String? description,
  // }) async {
  //   final greed = GreedState(
  //     name: name,
  //     price: price,
  //     description: description,
  //   );
  //   final box = Boxes.getGreeds();
  //   box.add(greed);
  // }

  // greedFromName({required String name}) {}
}
