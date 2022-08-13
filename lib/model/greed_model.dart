import 'package:flutter/material.dart';
import 'package:hello_app/repository/greed_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final greedModelProvider = ChangeNotifierProvider<GreedModel>(
  (ref) => GreedModel(),
);

class GreedModel extends ChangeNotifier {
  GreedRepository greedRepository = GreedRepository();

  void addGreed(String name, int price, String description) {
    greedRepository.addGreedRepository(name, price, description);
  }
}