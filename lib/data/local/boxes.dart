import 'package:hello_app/data/model/greed.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Boxes {
  static Box<Greed> getGreeds() => Hive.box<Greed>('greeds');
}
