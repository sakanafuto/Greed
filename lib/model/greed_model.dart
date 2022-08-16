import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hello_app/main.dart';
import 'package:hello_app/model/greed.dart';
import 'package:hello_app/repository/greed_repository.dart';

final greedsProvider = StateNotifierProvider<GreedModel, List<Greed>>(
  (ref) => GreedModel(),
);

class GreedModel extends StateNotifier<List<Greed>> {
  GreedModel() : super([]);
  final List<Greed> greeds = box.values.toList().cast<Greed>();

  GreedRepository greedRepository = GreedRepository();

  void addGreed(String name, int price, String description) {
    greedRepository.addGreedRepository(name, price, description);
  }

  Greed? greedFromName(String name) {
    try {
      return greeds.where((greed) => greed.name == name).first;
    } catch (e) {
      return null;
    }
  }
}
