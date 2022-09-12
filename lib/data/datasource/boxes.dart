import 'package:hello_app/data/model/greed_state.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Boxes {
  static Box<GreedState> getGreeds() => Hive.box<GreedState>('greeds');
}
