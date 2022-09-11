import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hello_app/data/repository/greed_repository.dart';
import 'package:hello_app/data/repository/greed_repository_impl.dart';

final addGreedViewModelProvider =
    ChangeNotifierProvider((ref) => AddGreedViewModel(ref.read));

class AddGreedViewModel extends ChangeNotifier {
  AddGreedViewModel(this._reader);

  final Reader _reader;

  late final GreedRepository _repository = _reader(greedRepositoryProvider);

  // GreedModel? _greed;

  // GreedModel? get greed => _greed;

  addGreed(name, price, description) {
    return _repository.addGreed().then((result) {
      result.ifSuccess((data) {
        print(data);
        notifyListeners();
      });
    });
  }
}
