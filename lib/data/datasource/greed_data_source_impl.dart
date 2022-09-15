// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:greed/data/datasource/greed_data_source.dart';
// import 'package:greed/data/datasource/boxes.dart';
// import 'package:greed/data/model/greed_state.dart';

// final greedDataSourceProvider =
//     Provider<GreedDataSource>((_) => GreedDataSourceImpl());

// class GreedDataSourceImpl implements GreedDataSource {
//   GreedDataSourceImpl();

//   @override
//   addGreed(
//       {required String name, required int price, String? description}) async {
//     final greed = GreedState(
//       name: name,
//       price: price,
//       description: description,
//     );

//     final box = Boxes.getGreeds();
//     box.add(greed);
//   }

//   @override
//   greedFromName({required String name}) {}
// }
