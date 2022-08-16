import 'package:hive/hive.dart';

part 'greed.g.dart';

@HiveType(typeId: 0)
class Greed extends HiveObject {
  Greed({required this.name, required this.price, required this.description});

  @HiveField(0)
  final String name;

  @HiveField(1)
  final int price;

  @HiveField(2)
  final String description;

  Greed copyWith({String? name, int? price, String? description}) {
    return Greed(
      name: name ?? this.name,
      price: price ?? this.price,
      description: description ?? this.description,
    );
  }
}
