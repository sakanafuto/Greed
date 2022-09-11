import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'greed_model.freezed.dart';
part 'greed_model.g.dart';

// final newsDataSourceProvider = Provider((ref) => GreedModel(ref.read));

/// todo 
/// Hive周り？
// final greedsProvider = StateNotifierProvider<GreedModel, List<Greed>>(
//   (ref) => GreedModel(),
// );

@freezed
abstract class GreedModel with _$GreedModel {
  @HiveType(typeId: 0)
  const factory GreedModel({
    // Reader reader,
    @HiveField(0) required String name,
    @HiveField(1) required int price,
    @HiveField(2) required String description,
  }) = _GreedModel;

    // factory GreedModel.fromJson(Map<String, dynamic> json) =>
    //   _$GreedModelFromJson(json);
}
