import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'greed_state.freezed.dart';
part 'greed_state.g.dart';

@freezed
abstract class GreedState with _$GreedState {
  @HiveType(typeId: 0)
  const factory GreedState({
    @HiveField(0) required String name,
    @HiveField(1) required int price,
    @HiveField(2) String? description,
  }) = _GreedState;

  // factory GreedState.fromJson(Map<String, dynamic> json) =>
  //   _$GreedStateFromJson(json);
}
