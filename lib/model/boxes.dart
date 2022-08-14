import 'package:hello_app/model/greed.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Boxes {
  static Box<Greed> getGreeds() => Hive.box<Greed>('greeds');
}
