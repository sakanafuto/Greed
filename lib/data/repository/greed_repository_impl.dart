import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hello_app/data/local/boxes.dart';
import 'package:hello_app/data/repository/greed_repository.dart';

final greedRepositoryProvider =
    Provider((ref) => GreedRepositoryImpl(ref.read));

class GreedRepositoryImpl implements GreedRepository {
  GreedRepositoryImpl(this._reader);

  final Reader _reader;
  
  late final GreedModel _model = _reader(greedModelProvider);

  @override
  addGreed(String name, int price, String description) async {
    final greed = GreedModel(name: name, price: price, description: description);
    final box = Boxes.getGreeds();
    box.add(greed);
  }


}
