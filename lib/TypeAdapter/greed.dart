import 'package:hive/hive.dart';

part 'greed.g.dart';

@HiveType(typeId: 1)
class Greed {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  @HiveField(2)
  int price;

  @HiveField(3)
  String description;

  Greed({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
  });
}
