import 'package:hello_app/model/greed_model.dart';

class GreedList {
  final List<Greed> greeds;

  GreedList._internal({required this.greeds});

  factory GreedList() {
    Greed greed1 = Greed(id: 1, name: 'タクティカルチェア', price: 10000, description: 'スタイリッシュな椅子がほしい…');
    Greed greed2 = Greed(id: 2, name: 'iPad Pro', price: 130000, description: '理由はないけどほしい！');
    Greed greed3 = Greed(id: 3, name: 'チェス盤', price: 4000, description: 'チェスを本格的に習いたいから。');
    return GreedList._internal(greeds: [greed1, greed2, greed3]);
  }

  Greed? greedFromId(String id) {
    try {
      return greeds.where((greed) => greed.id.toString() == id).first;
    } catch (e) {
      return null;
    }
  }
}
