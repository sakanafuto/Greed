import 'package:hive/hive.dart';

part 'greed.g.dart';

@HiveType(typeId: 0)
class Greed extends HiveObject{
  @HiveField(0)
  String name;

  @HiveField(1)
  int price;

  @HiveField(2)
  String description;

  Greed({
    required this.name,
    required this.price,
    required this.description,
  });
}
