import 'package:flutter/material.dart';
import 'package:hello_app/main.dart';
import 'package:hello_app/model/greed.dart';
import 'package:hello_app/repository/greed_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final greedModelProvider = ChangeNotifierProvider<GreedModel>(
  (ref) => GreedModel(),
);

class GreedModel extends ChangeNotifier {
  GreedRepository greedRepository = GreedRepository();

  final List<Greed> greeds = box.values.toList().cast<Greed>();

  void addGreed(String name, int price, String description) {
    greedRepository.addGreedRepository(name, price, description);
    notifyListeners();
  }

  Greed? greedFromName(String name) {
    try {
      return greeds.where((greed) => greed.name == name).first;
    } catch (e) {
      return null;
    }
  }
}
