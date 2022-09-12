import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hello_app/data/datasource/greed_data_source.dart';
import 'package:hello_app/data/datasource/greed_data_source_impl.dart';


final addGreedViewModelProvider =
    ChangeNotifierProvider((ref) => AddGreedViewModel(ref.read));

class AddGreedViewModel extends ChangeNotifier {
  AddGreedViewModel(this._reader);

  final Reader _reader;

  late final GreedDataSource _dataSource = _reader(greedDataSourceProvider);

  void add({required name, required price, required description}) {
    _dataSource.addGreed(name: name, price: price, description: description);
    notifyListeners();
  }
}
